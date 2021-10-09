EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 6135E65E
P 8200 3825
F 0 "J2" H 8050 4125 50  0000 L CNN
F 1 "GY86" H 8025 4050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8200 3825 50  0001 C CNN
F 3 "~" H 8200 3825 50  0001 C CNN
	1    8200 3825
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 61360580
P 8150 4500
F 0 "J1" H 8175 4250 50  0000 R CNN
F 1 "Termometro" H 8325 4300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8150 4500 50  0001 C CNN
F 3 "~" H 8150 4500 50  0001 C CNN
	1    8150 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5075 3850 4750 3850
Wire Wire Line
	4750 3850 4750 4150
Wire Wire Line
	4750 4500 6750 4500
Wire Wire Line
	6750 4500 6750 4400
Wire Wire Line
	6750 4400 7950 4400
Wire Wire Line
	6325 3050 7000 3050
Wire Wire Line
	7000 3050 7000 3200
Wire Wire Line
	7000 4500 7950 4500
$Comp
L Device:R R1
U 1 1 61366373
P 4600 4150
F 0 "R1" V 4393 4150 50  0000 C CNN
F 1 "4.7K" V 4484 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 4150 50  0001 C CNN
F 3 "~" H 4600 4150 50  0001 C CNN
	1    4600 4150
	0    1    1    0   
$EndComp
Connection ~ 4750 4150
Wire Wire Line
	4750 4150 4750 4500
Wire Wire Line
	4450 4600 4450 4150
Wire Wire Line
	4450 3150 5075 3150
Wire Wire Line
	4450 4600 7250 4600
Connection ~ 4450 4150
Wire Wire Line
	4450 4150 4450 3150
Text GLabel 8150 4600 2    50   Input ~ 0
VCC
Text GLabel 8150 4500 2    50   Input ~ 0
GND
Text GLabel 8150 4400 2    50   Input ~ 0
DATA
Wire Wire Line
	7000 3925 8000 3925
Connection ~ 7000 3925
Wire Wire Line
	7000 3925 7000 4500
Wire Wire Line
	8000 4025 7250 4025
Wire Wire Line
	7250 4025 7250 4600
Connection ~ 7250 4600
Wire Wire Line
	7250 4600 7950 4600
Wire Wire Line
	5075 3250 4275 3250
Wire Wire Line
	4275 3250 4275 4925
Wire Wire Line
	4275 4925 7425 4925
Wire Wire Line
	7425 4925 7425 3725
Wire Wire Line
	7425 3725 8000 3725
Wire Wire Line
	5075 3350 4375 3350
Wire Wire Line
	4375 3350 4375 4825
Wire Wire Line
	4375 4825 7500 4825
Wire Wire Line
	7500 4825 7500 3825
Wire Wire Line
	7500 3825 8000 3825
Text GLabel 8200 3725 2    50   Input ~ 0
SDA
Text GLabel 8200 3825 2    50   Input ~ 0
SDL
Text GLabel 8200 3925 2    50   Input ~ 0
GND
Text GLabel 8200 4025 2    50   Input ~ 0
VCC
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 6137274A
P 8200 3000
F 0 "J3" H 8250 3225 50  0000 L CNN
F 1 "INA219" H 8250 3125 50  0000 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x06_P2.00mm_Vertical" H 8200 3000 50  0001 C CNN
F 3 "~" H 8200 3000 50  0001 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3200 8000 3200
Wire Wire Line
	8000 3300 7250 3300
Wire Wire Line
	7425 3000 8000 3000
Wire Wire Line
	7500 3100 8000 3100
Text GLabel 8200 3000 2    50   Input ~ 0
SDA
Text GLabel 8200 3100 2    50   Input ~ 0
SDL
Text GLabel 8200 3200 2    50   Input ~ 0
GND
Text GLabel 8200 3300 2    50   Input ~ 0
VCC
Connection ~ 7000 3200
Wire Wire Line
	7000 3200 7000 3925
Wire Wire Line
	7500 3825 7500 3100
Connection ~ 7500 3825
Wire Wire Line
	7425 3725 7425 3000
Connection ~ 7425 3725
Wire Wire Line
	7250 3300 7250 4025
Connection ~ 7250 4025
$Comp
L Device:D D1
U 1 1 613759CE
P 2000 2775
F 0 "D1" V 2046 2695 50  0000 R CNN
F 1 "D" V 1955 2695 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 2000 2775 50  0001 C CNN
F 3 "~" H 2000 2775 50  0001 C CNN
	1    2000 2775
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D2
U 1 1 61376E9E
P 2250 2775
F 0 "D2" V 2296 2695 50  0000 R CNN
F 1 "D" V 2205 2695 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 2250 2775 50  0001 C CNN
F 3 "~" H 2250 2775 50  0001 C CNN
	1    2250 2775
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D3
U 1 1 613780AD
P 2500 2775
F 0 "D3" V 2546 2695 50  0000 R CNN
F 1 "D" V 2455 2695 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 2500 2775 50  0001 C CNN
F 3 "~" H 2500 2775 50  0001 C CNN
	1    2500 2775
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 61378E75
P 2750 2775
F 0 "D4" V 2796 2695 50  0000 R CNN
F 1 "D" V 2705 2695 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 2750 2775 50  0001 C CNN
F 3 "~" H 2750 2775 50  0001 C CNN
	1    2750 2775
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J0
U 1 1 6137D4FE
P 2100 2050
F 0 "J0" V 2162 2294 50  0000 L CNN
F 1 "IN Solar Power" V 2253 2294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2100 2050 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2250 2000 2625
Wire Wire Line
	2100 2250 2100 2500
Wire Wire Line
	2100 2500 2250 2500
Wire Wire Line
	2250 2500 2250 2625
Wire Wire Line
	2200 2250 2200 2425
Wire Wire Line
	2200 2425 2500 2425
Wire Wire Line
	2500 2425 2500 2625
Wire Wire Line
	2300 2250 2300 2325
Wire Wire Line
	2300 2325 2750 2325
Wire Wire Line
	2750 2325 2750 2625
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 61387E67
P 2100 3575
F 0 "J4" V 1946 3823 50  0000 L CNN
F 1 "Cargador 03962A" V 2025 3825 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 2100 3575 50  0001 C CNN
F 3 "~" H 2100 3575 50  0001 C CNN
	1    2100 3575
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2925 2000 3100
Wire Wire Line
	2000 3100 2250 3100
Wire Wire Line
	2750 3100 2750 2925
Wire Wire Line
	2500 2925 2500 3100
Connection ~ 2500 3100
Wire Wire Line
	2500 3100 2750 3100
Wire Wire Line
	2250 2925 2250 3100
Connection ~ 2250 3100
Wire Wire Line
	2250 3100 2300 3100
Wire Wire Line
	2300 3375 2300 3100
Connection ~ 2300 3100
Wire Wire Line
	2300 3100 2500 3100
Wire Wire Line
	1800 3375 1800 2250
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 61393C13
P 2100 4000
F 0 "J5" V 2162 4244 50  0000 L CNN
F 1 "Cargador 03962A" V 2253 4244 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 2100 4000 50  0001 C CNN
F 3 "~" H 2100 4000 50  0001 C CNN
	1    2100 4000
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BT1
U 1 1 61397853
P 1900 4800
F 0 "BT1" H 1792 4754 50  0000 R CNN
F 1 "Battery" H 1792 4845 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" V 1900 4860 50  0001 C CNN
F 3 "~" V 1900 4860 50  0001 C CNN
	1    1900 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 4200 1900 4600
Wire Wire Line
	2200 4200 2200 5125
Wire Wire Line
	2200 5125 2100 5125
Wire Wire Line
	1900 5125 1900 5000
$Comp
L power:GND #PWR0101
U 1 1 6139F14F
P 1800 4425
F 0 "#PWR0101" H 1800 4175 50  0001 C CNN
F 1 "GND" H 1805 4252 50  0000 C CNN
F 2 "" H 1800 4425 50  0001 C CNN
F 3 "" H 1800 4425 50  0001 C CNN
	1    1800 4425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6139FD65
P 2300 4425
F 0 "#PWR0102" H 2300 4275 50  0001 C CNN
F 1 "+5V" H 2315 4598 50  0000 C CNN
F 2 "" H 2300 4425 50  0001 C CNN
F 3 "" H 2300 4425 50  0001 C CNN
	1    2300 4425
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4425 2300 4200
Wire Wire Line
	1800 4425 1800 4200
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 613A34F3
P 2000 5325
F 0 "J6" V 2154 5137 50  0000 R CNN
F 1 "INA219" V 2063 5137 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2000 5325 50  0001 C CNN
F 3 "~" H 2000 5325 50  0001 C CNN
	1    2000 5325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 5125 1900 5125
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 613A543F
P 8200 2450
F 0 "J7" H 8172 2332 50  0000 R CNN
F 1 "Bat IN 5V" H 8172 2423 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8200 2450 50  0001 C CNN
F 3 "~" H 8200 2450 50  0001 C CNN
	1    8200 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6325 2950 6725 2950
Wire Wire Line
	6725 2950 6725 2350
Wire Wire Line
	6725 2350 8000 2350
Wire Wire Line
	7000 3050 7000 2450
Wire Wire Line
	7000 2450 8000 2450
Connection ~ 7000 3050
$Comp
L Connector:Conn_01x13_Female J0L1
U 1 1 613D1CE5
P 5275 3550
F 0 "J0L1" H 5125 4350 50  0000 L CNN
F 1 "TTGO T-beam" H 5050 4275 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 5275 3550 50  0001 C CNN
F 3 "~" H 5275 3550 50  0001 C CNN
	1    5275 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x13_Female J0R1
U 1 1 613DA1DF
P 6125 3550
F 0 "J0R1" H 6017 2725 50  0000 C CNN
F 1 "Conn_01x13_Female" H 6017 2816 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 6125 3550 50  0001 C CNN
F 3 "~" H 6125 3550 50  0001 C CNN
	1    6125 3550
	-1   0    0    1   
$EndComp
Text GLabel 5275 2950 2    50   Input ~ 0
Lora02
Text GLabel 5275 3050 2    50   Input ~ 0
Lora01
Text GLabel 5275 3150 2    50   Input ~ 0
3V3
Text GLabel 5275 3250 2    50   Input ~ 0
SDA
Text GLabel 5275 3350 2    50   Input ~ 0
SCL
Text GLabel 5275 3450 2    50   Input ~ 0
GND
Text GLabel 5275 3550 2    50   Input ~ 0
DCDC1
Text GLabel 5275 3650 2    50   Input ~ 0
GND
Text GLabel 5275 3750 2    50   Input ~ 0
0
Text GLabel 5275 3850 2    50   Input ~ 0
4
Text GLabel 5275 3950 2    50   Input ~ 0
23
Text GLabel 5275 4050 2    50   Input ~ 0
RXD
Text GLabel 5275 4150 2    50   Input ~ 0
TXD
Text GLabel 6125 2950 0    50   Input ~ 0
5V
Text GLabel 6125 3050 0    50   Input ~ 0
GND
Text GLabel 6125 3150 0    50   Input ~ 0
2
Text GLabel 6125 3250 0    50   Input ~ 0
13
Text GLabel 6125 3350 0    50   Input ~ 0
14
Text GLabel 6125 3450 0    50   Input ~ 0
25
Text GLabel 6125 3550 0    50   Input ~ 0
33
Text GLabel 6125 3650 0    50   Input ~ 0
32
Text GLabel 6125 3750 0    50   Input ~ 0
35
Text GLabel 6125 3850 0    50   Input ~ 0
15
Text GLabel 6125 3950 0    50   Input ~ 0
RST
Text GLabel 6125 4050 0    50   Input ~ 0
SVN
Text GLabel 6125 4150 0    50   Input ~ 0
SVP
Text GLabel 2300 3575 3    50   Input ~ 0
+V
Text GLabel 1800 3575 3    50   Input ~ 0
-V
Text GLabel 1800 4000 1    50   Input ~ 0
GND
Text GLabel 1900 4000 1    50   Input ~ 0
GND
Text GLabel 2200 4000 1    50   Input ~ 0
+VBAT
Text GLabel 2300 4000 1    50   Input ~ 0
+V
Text GLabel 2100 5325 3    50   Input ~ 0
+V
Text GLabel 2000 5325 3    50   Input ~ 0
+V
$EndSCHEMATC
