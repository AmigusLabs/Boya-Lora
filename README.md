# Boia-Lora
### Boia con alimentación solar, para telemetria de temperatura e altuara da ola do lago de As Pontes. Datos enviados por Lora para o seu procesado.

Ano 2021 - Proxecto financiado por Xunta de Galicia

A idea do proxecto é crear unha boia que nos permita coñecer o estado do lago, ben para goce da praia ou ben para os deportes que nel practícanse.

O obxectivo era crear un  instrumento económico e efectivo para xerar os datos, e en última instancia, mellorar a comprensicón deles. Este é o principal obxectivo do proxecto, deseño, rexistro e presentación dos datos.

Os sensores a bordo da boia permítenlle medir: altura das ondas, período das ondas, potencia das ondas, temperatura da auga, temperatura do aire, presión do aire, voltaxe e consumo actual e localización GPS.

![Boia lora](https://raw.githubusercontent.com/CyberMODE/Boya-Lora/a475e333dc13617cde9e1c0f26b45d9383a39084/images/IMG_3604.jpg)

## Materiais

Para a construción completa da boia, necesita moitas cousas. Temos a desagregación dos materiais específicos requiridos en está a lista:

- Lilygo T-Beam 868mhzs
- 4 placas solares 90x60mm 6V 100mA
- INA219
- GY-86
- Sensor temperatura DS18B20
- Batería 18650
- PETG para impresión 3d
- GomaEVA
- Conectores PG7
- Regulador MT3608
- JMX-045 domo 4,5" / 114mm

## Estado:
- [ ] Desarrollo web (Rest API)
- [ ] Creación PCBs en KiCad para a electrónica
- [ ] Implementación Lora e envio a TTNv3
- [x] Implementación do software en T-BEAM de temperatua e sensores.
- [x] Implementación control enerxético
- [x] Fabricación 3d
- [x] Corte laser da Goma Eva
- [x] Deseño 2d
- [x] Deseño 3d
