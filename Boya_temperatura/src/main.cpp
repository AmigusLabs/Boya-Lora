
#include <Arduino.h>
#include <OneWire.h>
#include <Wire.h>
#include <DallasTemperature.h>
#include "current.h" //INA219
#include <WiFi.h>
#include <esp_sleep.h>

#include <TinyGPS++.h>
#include <axp20x.h>
#include "I2Cdev.h"
#include "MPU6050.h"
#include <ms5611.h>

// GY86 -- Olas --
MPU6050 mpu;
MS5611 baro;
long pressure;
double altitude, min_height, max_height, wave_height, mid_point, smudge_factor, wave_power;
byte escaped, started;
unsigned long period_start, period_end;
float avg_period = -1;

// GPIO donde el DS18B20 está conectado
const int oneWireBus = 4;
OneWire oneWire(oneWireBus);
DallasTemperature sensors(&oneWire);

// GPS
TinyGPSPlus gps;
HardwareSerial GPS(1);
AXP20X_Class axp;

void setup()
{
  Serial.println("Iniciando");
  Serial.begin(115200);
  // GPS
  Wire.begin(21, 22);
  if (!axp.begin(Wire, AXP192_SLAVE_ADDRESS))
  {
    Serial.println("AXP192 Begin PASS");
  }
  else
  {
    Serial.println("AXP192 Begin FAIL");
  }
  axp.setPowerOutPut(AXP192_LDO2, AXP202_ON);
  axp.setPowerOutPut(AXP192_LDO3, AXP202_ON);
  axp.setPowerOutPut(AXP192_DCDC2, AXP202_ON);
  axp.setPowerOutPut(AXP192_EXTEN, AXP202_ON);
  axp.setPowerOutPut(AXP192_DCDC1, AXP202_ON);
  GPS.begin(9600, SERIAL_8N1, 34, 12); //17-TX 18-RX

  WiFi.mode(WIFI_OFF);
  btStop();

  init_INA219(0);

  if (axp.begin(Wire, AXP192_SLAVE_ADDRESS) == AXP_FAIL)
  {
    Serial.println(F("failed to initialize communication with AXP192"));
  }

  // Encendiendo GPS
  sensors.begin();

  if (axp.setPowerOutPut(AXP192_LDO3, AXP202_ON) == AXP_PASS)
  {
    Serial.println(F("turned ON GPS module"));
  }
  else
  {
    Serial.println(F("failed to turn off GPS module"));
  }

  // GY86 --Olas --
  Wire.begin();
  Serial.println("Initializing I2C devices...");
  mpu.setI2CMasterModeEnabled(false);
  mpu.setI2CBypassEnabled(true);
  mpu.setSleepEnabled(false);
  mpu.initialize();
  Serial.println(mpu.testConnection() ? "MPU6050 connection successful" : "MPU6050 connection failed");
  while (!baro.begin(MS5611_ULTRA_HIGH_RES))
  {
    Serial.println("MS5611 connection unsuccessful, check wiring!");
    delay(500);
  }
}

void loop()
{

  // Temperatura DS18B20
  sensors.requestTemperatures();            //Se envía el comando para leer la temperatura
  float tempC = sensors.getTempCByIndex(0); //Se obtiene la temperatura en ºC
  Serial.print(tempC);
  Serial.println("ºC");


  // INA219
  float Voltaje = get_LoadVolts();
  float Consumo = get_LoadCurrent();
  Serial.print(Voltaje);
  Serial.print("V - ");
  Serial.print(Consumo);
  Serial.println("mA");

  // V y mA placa
  Serial.print(axp.getBattVoltage() / 1000);
  Serial.print("V  APX- ");
  Serial.print(axp.getBattChargeCurrent() - axp.getBattDischargeCurrent());
  Serial.println(" mA");


  unsigned long start_time = millis();
  pressure = baro.readPressure(true);
  altitude = baro.getAltitude(pressure);
  max_height = altitude;
  min_height = altitude;
  //  Espera 15 segundos

  pressure = baro.readPressure(true);
  float raw = pressure;
  float filtro = 8;
  while (millis() - start_time < 15000)
  {

    // pressure = baro.readPressure(true);

    // filtro presion
    raw = baro.readPressure(true);

    pressure = ((filtro - 1) * pressure + raw) / filtro;

    altitude = baro.getAltitude(pressure);

    if (altitude < min_height)
      min_height = altitude;
    if (altitude > max_height)
      max_height = altitude;
  }
  mid_point = (max_height + min_height) / 2.0;
  wave_height = (max_height - mid_point) / 2.0;
  smudge_factor = wave_height * 0.15;
  Serial.print("Altura de la ola m: ");
  Serial.print(wave_height);

  start_time = millis();
  //  Espera 15 segundos
  // pressure = baro.readPressure(true);
  while (millis() - start_time < 15000)
  {

    raw = baro.readPressure(true);
    pressure = ((filtro - 1) * pressure + raw) / filtro;

    altitude = baro.getAltitude(pressure);
    //    si está dentro de un rango del 30% de la altura de la ola desde el punto medio
    //    inicia el temporizador de lo contrario lo detiene
    if (altitude < mid_point + smudge_factor && altitude > mid_point - smudge_factor)
    {
      if (!started)
      {
        period_start = millis();
        started = true;
      }
      else
      {
        if (escaped)
        {
          // if it has started and escaped and is now returning
          period_end = millis();
          started = false;
          escaped = false;
          // if the variable has already been assigned
          // use its previous value and new value to work out avg
          if (avg_period != -1)
          {
            avg_period = (avg_period + (period_end - period_start) * 2) / 2.0;
          }
          // assign it
          else
          {
            avg_period = (period_end - period_start) * 2;
          }
        }
      }
    }
    else
    {
      escaped = true;
    }
  }
  Serial.print("  Periodo s: ");
  Serial.print(avg_period / 1000);
  wave_power = (0.5 * wave_height * wave_height * avg_period / 1000);
  Serial.print("  Potencia de la ola kW/m: ");
  Serial.println(wave_power);


  Serial.print("Latitude  : ");
  Serial.println(gps.location.lat(), 5);
  Serial.print("Longitude : ");
  Serial.println(gps.location.lng(), 4);
  Serial.print("Satellites: ");
  Serial.println(gps.satellites.value());
  Serial.print("Altitude  : ");
  Serial.print(gps.altitude.feet() / 3.2808);
  Serial.println("M");
  Serial.print(F("Date      : "));
  Serial.print(gps.date.month());
  Serial.print(F("/"));
  Serial.print(gps.date.day());
  Serial.print(F("/"));
  Serial.println(gps.date.year());
  Serial.print("Time      : ");
  Serial.print(gps.time.hour());
  Serial.print(":");
  Serial.print(gps.time.minute());
  Serial.print(":");
  Serial.println(gps.time.second());
  Serial.print("Speed     : ");
  Serial.println(gps.speed.kmph());
  Serial.println("**********************");


  delay(10000);

  // Apaga GPS
  Serial.println("GPS_OFF");

  if (axp.setPowerOutPut(AXP192_LDO3, AXP202_OFF) == AXP_PASS)
  {
    Serial.println(F("Apaga el moódulo GPS"));
  }
  else
  {
    Serial.println(F("Ha falaldo apagar el GPS"));
  }

  Serial.print(Voltaje);
  Serial.print("V - ");
  Serial.print(Consumo);
  Serial.println("mA");

  // V y mA placa
  Serial.print(axp.getBattVoltage() / 1000);
  Serial.print("V APX - ");
  Serial.print(axp.getBattChargeCurrent() - axp.getBattDischargeCurrent());
  Serial.println(" mA");


  delay(10000);

  // Empieza a dormir
  Serial.println("Deep Sleep");

Serial.print(Voltaje);
  Serial.print("V - ");
  Serial.print(Consumo);
  Serial.println("mA");

  // V y mA placa
  Serial.print(axp.getBattVoltage() / 1000);
  Serial.print("V APX - ");
  Serial.print(axp.getBattChargeCurrent() - axp.getBattDischargeCurrent());
  Serial.println(" mA");
  
  esp_sleep_enable_timer_wakeup(30 * 1000 * 1000);
  esp_deep_sleep_start();
}
