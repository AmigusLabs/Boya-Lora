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
L Device:D D1
U 1 1 613759CE
P 5325 2650
F 0 "D1" V 5371 2570 50  0000 R CNN
F 1 "D" V 5280 2570 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 5325 2650 50  0001 C CNN
F 3 "~" H 5325 2650 50  0001 C CNN
	1    5325 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D2
U 1 1 61376E9E
P 5575 2650
F 0 "D2" V 5621 2570 50  0000 R CNN
F 1 "D" V 5530 2570 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 5575 2650 50  0001 C CNN
F 3 "~" H 5575 2650 50  0001 C CNN
	1    5575 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D3
U 1 1 613780AD
P 5825 2650
F 0 "D3" V 5871 2570 50  0000 R CNN
F 1 "D" V 5780 2570 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 5825 2650 50  0001 C CNN
F 3 "~" H 5825 2650 50  0001 C CNN
	1    5825 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 61378E75
P 6075 2650
F 0 "D4" V 6121 2570 50  0000 R CNN
F 1 "D" V 6030 2570 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 6075 2650 50  0001 C CNN
F 3 "~" H 6075 2650 50  0001 C CNN
	1    6075 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J0
U 1 1 6137D4FE
P 5325 1925
F 0 "J0" V 5387 2169 50  0000 L CNN
F 1 "IN Solar Power" V 5478 2169 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5325 1925 50  0001 C CNN
F 3 "~" H 5325 1925 50  0001 C CNN
	1    5325 1925
	0    -1   1    0   
$EndComp
Wire Wire Line
	5325 2125 5325 2500
Wire Wire Line
	5425 2125 5425 2375
Wire Wire Line
	5425 2375 5575 2375
Wire Wire Line
	5575 2375 5575 2500
Wire Wire Line
	5525 2125 5525 2300
Wire Wire Line
	5525 2300 5825 2300
Wire Wire Line
	5825 2300 5825 2500
Wire Wire Line
	5625 2125 5625 2200
Wire Wire Line
	5625 2200 6075 2200
Wire Wire Line
	6075 2200 6075 2500
Wire Wire Line
	5325 2800 5325 2975
Wire Wire Line
	5325 2975 5575 2975
Wire Wire Line
	6075 2975 6075 2800
Wire Wire Line
	5825 2800 5825 2975
Connection ~ 5825 2975
Wire Wire Line
	5825 2975 6075 2975
Wire Wire Line
	5575 2800 5575 2975
Connection ~ 5575 2975
Wire Wire Line
	5575 2975 5625 2975
Wire Wire Line
	5625 3250 5625 2975
Connection ~ 5625 2975
Wire Wire Line
	5625 2975 5825 2975
Wire Wire Line
	5125 3250 5125 2125
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 61393C13
P 5325 3875
F 0 "J2" V 5387 4119 50  0000 L CNN
F 1 "Cargador 03962A" V 5478 4119 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5325 3875 50  0001 C CNN
F 3 "~" H 5325 3875 50  0001 C CNN
	1    5325 3875
	0    -1   1    0   
$EndComp
$Comp
L Device:Battery BT1
U 1 1 61397853
P 5225 4675
F 0 "BT1" H 5117 4629 50  0000 R CNN
F 1 "Battery" H 5117 4720 50  0000 R CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 5225 4735 50  0001 C CNN
F 3 "~" V 5225 4735 50  0001 C CNN
	1    5225 4675
	-1   0    0    1   
$EndComp
Wire Wire Line
	5225 4075 5225 4475
Wire Wire Line
	5525 4075 5525 5000
Wire Wire Line
	5525 5000 5425 5000
Wire Wire Line
	5225 5000 5225 4875
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 613A34F3
P 5325 5200
F 0 "J3" V 5479 5012 50  0000 R CNN
F 1 "INA219" V 5388 5012 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5325 5200 50  0001 C CNN
F 3 "~" H 5325 5200 50  0001 C CNN
	1    5325 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5325 5000 5225 5000
Text GLabel 5625 3450 3    50   Input ~ 0
+V
Text GLabel 5125 3450 3    50   Input ~ 0
-V
Text GLabel 5125 3875 1    50   Input ~ 0
-OUT
Text GLabel 5225 3875 1    50   Input ~ 0
-B
Text GLabel 5525 3875 1    50   Input ~ 0
+B
Text GLabel 5625 3875 1    50   Input ~ 0
+OUT
Text GLabel 5425 5200 3    50   Input ~ 0
+V
Text GLabel 5325 5200 3    50   Input ~ 0
+V
Wire Wire Line
	6250 4425 5125 4425
Wire Wire Line
	5125 4075 5125 4425
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 613E3792
P 6450 4425
F 0 "J4" H 6600 4200 50  0000 R CNN
F 1 "V-OUT" H 6775 4525 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6450 4425 50  0001 C CNN
F 3 "~" H 6450 4425 50  0001 C CNN
	1    6450 4425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 4525 5625 4525
Wire Wire Line
	5625 4525 5625 4075
Text GLabel 6450 4525 2    50   Output ~ 0
V+
Text GLabel 6450 4425 2    50   Output ~ 0
GND
Text Notes 7350 7500 0    50   ~ 0
PCB de carga de boya solar
Text Notes 8125 7650 0    50   ~ 0
12/9/2021
Text Notes 10575 7650 0    50   ~ 0
v1
Text Notes 4300 1425 0    118  ~ 24
Cargador Bat 18650 Solar
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 61387E67
P 5325 3450
F 0 "J1" V 5171 3698 50  0000 L CNN
F 1 "Cargador 03962A" V 5250 3700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5325 3450 50  0001 C CNN
F 3 "~" H 5325 3450 50  0001 C CNN
	1    5325 3450
	0    -1   1    0   
$EndComp
$EndSCHEMATC
