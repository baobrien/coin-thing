EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1950 1450 0    50   ~ 0
R_PH
Text Label 1950 1550 0    50   ~ 0
T_PH
Wire Wire Line
	2250 1300 2350 1300
Wire Wire Line
	2350 1700 2250 1700
Text Label 3250 1800 2    50   ~ 0
T_COIN
Wire Wire Line
	4850 1300 5650 1300
Wire Wire Line
	4850 1700 4950 1700
Text Label 4900 1300 0    50   ~ 0
R_CO
Text Label 4900 1700 0    50   ~ 0
T_CO
Wire Wire Line
	4250 1800 4000 1800
Wire Wire Line
	4000 1800 4000 2250
Wire Wire Line
	4000 2250 3900 2250
Wire Wire Line
	3600 2250 3550 2250
Wire Wire Line
	3550 2250 3550 1400
Wire Wire Line
	3550 1400 4250 1400
$Comp
L Connector:Barrel_Jack_Switch_MountingPin J4
U 1 1 5F9413CC
P 10450 5000
F 0 "J4" H 10507 5317 50  0000 C CNN
F 1 "Barrel_Jack_Switch_MountingPin" H 10507 5226 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 10500 4960 50  0001 C CNN
F 3 "~" H 10500 4960 50  0001 C CNN
F 4 "PJ-102AH" H 10450 5000 50  0001 C CNN "Part"
	1    10450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F942022
P 11000 5200
F 0 "#PWR0101" H 11000 4950 50  0001 C CNN
F 1 "GND" H 11005 5027 50  0000 C CNN
F 2 "" H 11000 5200 50  0001 C CNN
F 3 "" H 11000 5200 50  0001 C CNN
	1    11000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5000 11000 5000
Wire Wire Line
	11000 5000 11000 5100
Wire Wire Line
	10750 5100 11000 5100
Connection ~ 11000 5100
Wire Wire Line
	11000 5100 11000 5200
Wire Wire Line
	11000 4900 10750 4900
$Sheet
S 1900 6200 650  750 
U 5FA3EC89
F0 "HVSupply" 50
F1 "HVSupply.sch" 50
F2 "VIN" I L 1900 6400 50 
F3 "VOUT_P" O R 2550 6400 50 
F4 "VOUT_N" O R 2550 6500 50 
F5 "GND" I L 1900 6500 50 
F6 "HV_EN" I L 1900 6700 50 
$EndSheet
$Comp
L power:GND #PWR0102
U 1 1 5FA571E7
P 1350 6600
F 0 "#PWR0102" H 1350 6350 50  0001 C CNN
F 1 "GND" H 1355 6427 50  0000 C CNN
F 2 "" H 1350 6600 50  0001 C CNN
F 3 "" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6400 1650 6400
Text Label 1650 6400 0    50   ~ 0
48V
Wire Wire Line
	1350 6500 1350 6600
Wire Wire Line
	1350 6500 1900 6500
Wire Wire Line
	1900 6700 1650 6700
Text Label 1650 6700 0    50   ~ 0
HV_EN
Text Label 2650 6400 0    50   ~ 0
HV_P
Text Label 2650 6500 0    50   ~ 0
HV_N
$Sheet
S 3950 6150 1150 1100
U 5FA767FA
F0 "Coin Test and Collect" 50
F1 "CoinTestCollect.sch" 50
F2 "HV_P" I L 3950 6400 50 
F3 "HV_N" I L 3950 6500 50 
F4 "T_COIN" I L 3950 6700 50 
F5 "GND" I L 3950 7050 50 
F6 "5V_RELAY" I L 3950 6200 50 
F7 "COIN_POLARITY" I R 5100 6400 50 
F8 "COIN_TEST_R" I R 5100 6500 50 
F9 "COIN_TEST" I R 5100 6850 50 
F10 "3V3" I L 3950 6300 50 
F11 "GND_PHONE" I L 3950 6900 50 
$EndSheet
$Comp
L power:GND #PWR0103
U 1 1 5FAB9BA9
P 3750 7150
F 0 "#PWR0103" H 3750 6900 50  0001 C CNN
F 1 "GND" H 3755 6977 50  0000 C CNN
F 2 "" H 3750 7150 50  0001 C CNN
F 3 "" H 3750 7150 50  0001 C CNN
	1    3750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7050 3750 7150
Text Label 3600 6700 0    50   ~ 0
T_COIN
Wire Wire Line
	3950 6300 3600 6300
Wire Wire Line
	3950 6200 3600 6200
Text Label 3600 6200 0    50   ~ 0
5V_RELAY
Text Label 3600 6300 0    50   ~ 0
3V3
$Comp
L Transistor_Array:ULN2003 U1
U 1 1 5FAC4CEA
P 2350 3150
F 0 "U1" H 2350 3817 50  0000 C CNN
F 1 "ULN2003LV" H 2350 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2400 2600 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 2450 2950 50  0001 C CNN
	1    2350 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 2750 1950 2750
Text Label 1500 2750 0    50   ~ 0
5V_RELAY
Text Label 3450 900  2    50   ~ 0
5V_RELAY
Text Label 3800 900  0    50   ~ 0
5V_RELAY
Wire Wire Line
	3800 900  4250 900 
Text Label 5300 6400 0    50   ~ 0
COIN_POLARITY
Text Label 5300 6500 0    50   ~ 0
COIN_TEST_RELAY
Wire Wire Line
	5100 6400 5950 6400
Wire Wire Line
	5950 6500 5100 6500
$Comp
L power:GND #PWR0104
U 1 1 5FAD5FFE
P 2350 3850
F 0 "#PWR0104" H 2350 3600 50  0001 C CNN
F 1 "GND" H 2355 3677 50  0000 C CNN
F 2 "" H 2350 3850 50  0001 C CNN
F 3 "" H 2350 3850 50  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3750 2350 3850
Text Label 1250 2950 0    50   ~ 0
COIN_POLARITY
Text Label 1250 3050 0    50   ~ 0
COIN_TEST_RELAY
Wire Wire Line
	1250 2950 1950 2950
Wire Wire Line
	1250 3050 1950 3050
Text Label 5400 900  2    50   ~ 0
CO_HOLD
Text Label 1250 3150 0    50   ~ 0
CO_HOLD
Wire Wire Line
	4850 900  5400 900 
Text Label 1250 3250 0    50   ~ 0
FXS_TO_COIN_1
Wire Wire Line
	1250 3150 1950 3150
Wire Wire Line
	1250 3250 1950 3250
Text Label 1750 900  0    50   ~ 0
FXS_TO_COIN_1
Wire Wire Line
	9550 800  10000 800 
Wire Wire Line
	10000 800  10000 900 
Wire Wire Line
	10000 900  9550 900 
Text Label 10000 800  2    50   ~ 0
5VRPI
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5FAF0804
P 9250 1700
F 0 "J3" H 9300 2817 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9300 2726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9250 1700 50  0001 C CNN
F 3 "~" H 9250 1700 50  0001 C CNN
	1    9250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 800  9050 800 
Text Label 8550 800  0    50   ~ 0
3V3RPI
$Comp
L power:GND #PWR0105
U 1 1 5FAF6076
P 8950 2800
F 0 "#PWR0105" H 8950 2550 50  0001 C CNN
F 1 "GND" H 8955 2627 50  0000 C CNN
F 2 "" H 8950 2800 50  0001 C CNN
F 3 "" H 8950 2800 50  0001 C CNN
	1    8950 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FAFBA42
P 9650 2800
F 0 "#PWR0106" H 9650 2550 50  0001 C CNN
F 1 "GND" H 9655 2627 50  0000 C CNN
F 2 "" H 9650 2800 50  0001 C CNN
F 3 "" H 9650 2800 50  0001 C CNN
	1    9650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2800 8950 2700
Wire Wire Line
	8950 2700 9050 2700
Wire Wire Line
	9050 2000 8950 2000
Wire Wire Line
	8950 2000 8950 2700
Connection ~ 8950 2700
Wire Wire Line
	9050 1200 8950 1200
Wire Wire Line
	8950 1200 8950 2000
Connection ~ 8950 2000
Wire Wire Line
	9550 1400 9650 1400
Wire Wire Line
	9650 1400 9650 1700
Wire Wire Line
	9550 1700 9650 1700
Connection ~ 9650 1700
Wire Wire Line
	9650 1700 9650 2200
Wire Wire Line
	9550 2200 9650 2200
Connection ~ 9650 2200
Wire Wire Line
	9650 2200 9650 2400
Wire Wire Line
	9550 2400 9650 2400
Connection ~ 9650 2400
Wire Wire Line
	9550 1000 9650 1000
Wire Wire Line
	9650 1000 9650 1400
Connection ~ 9650 1400
Wire Wire Line
	9650 2400 9650 2800
Wire Wire Line
	8550 1600 9050 1600
Wire Wire Line
	3950 6500 2550 6500
Wire Wire Line
	2550 6400 3950 6400
Wire Wire Line
	5950 6850 5100 6850
Text Label 5950 6850 2    50   ~ 0
COIN_TEST
Wire Wire Line
	2250 1450 1350 1450
Wire Wire Line
	2250 1300 2250 1450
Wire Wire Line
	1350 1550 2250 1550
Wire Wire Line
	2250 1550 2250 1700
$Comp
L Device:R_US R10
U 1 1 5FBB6E50
P 3750 2250
F 0 "R10" V 3545 2250 50  0000 C CNN
F 1 "120 2W" V 3636 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3790 2240 50  0001 C CNN
F 3 "~" H 3750 2250 50  0001 C CNN
	1    3750 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R15
U 1 1 5FBB772C
P 6450 2100
F 0 "R15" H 6382 2054 50  0000 R CNN
F 1 "10k" H 6382 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6490 2090 50  0001 C CNN
F 3 "~" H 6450 2100 50  0001 C CNN
	1    6450 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5FBB7DCF
P 6800 2100
F 0 "R16" H 6732 2054 50  0000 R CNN
F 1 "10k" H 6732 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6840 2090 50  0001 C CNN
F 3 "~" H 6800 2100 50  0001 C CNN
	1    6800 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 1950 6450 1900
Wire Wire Line
	6450 1900 6800 1900
Wire Wire Line
	6800 1900 6800 1950
Text Label 6500 1900 0    50   ~ 0
3V3
Wire Wire Line
	6250 2300 6450 2300
Wire Wire Line
	6450 2300 6450 2250
Wire Wire Line
	6250 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2250
Wire Wire Line
	6450 2300 7350 2300
Connection ~ 6450 2300
Wire Wire Line
	7350 2850 6800 2850
Connection ~ 6800 2850
Wire Wire Line
	6250 2500 6450 2500
Wire Wire Line
	6450 2500 6450 3050
Wire Wire Line
	6450 3050 6250 3050
$Comp
L power:GND #PWR0111
U 1 1 5FBD45A0
P 6450 3150
F 0 "#PWR0111" H 6450 2900 50  0001 C CNN
F 1 "GND" H 6455 2977 50  0000 C CNN
F 2 "" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3050 6450 3150
Connection ~ 6450 3050
$Comp
L Device:R_US R13
U 1 1 5FBD950B
P 5250 1500
F 0 "R13" V 5350 1350 50  0000 C CNN
F 1 "120" V 5364 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5290 1490 50  0001 C CNN
F 3 "~" H 5250 1500 50  0001 C CNN
	1    5250 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 1700 4950 1500
Wire Wire Line
	4950 1500 5050 1500
Wire Wire Line
	5500 1500 5500 1400
Wire Wire Line
	5500 1400 5650 1400
Wire Wire Line
	5400 1500 5500 1500
Wire Wire Line
	5650 2300 5500 2300
Wire Wire Line
	5500 2300 5500 1500
Connection ~ 5500 1500
Wire Wire Line
	5050 1500 5050 2500
Wire Wire Line
	5050 2500 5650 2500
Connection ~ 5050 1500
Wire Wire Line
	5050 1500 5100 1500
Wire Wire Line
	5500 2300 5500 3050
Wire Wire Line
	5500 3050 5650 3050
Connection ~ 5500 2300
Wire Wire Line
	5650 2850 5050 2850
Wire Wire Line
	5050 2850 5050 2500
Connection ~ 5050 2500
Text Label 7350 2300 2    50   ~ 0
OFF_HOOK_F
Text Label 7350 2850 2    50   ~ 0
OFF_HOOK_R
Wire Wire Line
	3750 7050 3950 7050
Wire Wire Line
	3600 6700 3950 6700
Text Label 3400 6900 0    50   ~ 0
GND_PHONE
$Comp
L Interface_Expansion:TCA9534 U4
U 1 1 5FC600B9
P 4050 3250
F 0 "U4" H 4250 3750 50  0000 C CNN
F 1 "TCA9534" H 3850 3750 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5000 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9534.pdf" H 4150 3150 50  0001 C CNN
	1    4050 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 2500 4050 2500
Wire Wire Line
	4050 2500 4050 2650
Text Label 4250 2500 2    50   ~ 0
3V3
$Comp
L power:GND #PWR0112
U 1 1 5FC6D15F
P 4050 4100
F 0 "#PWR0112" H 4050 3850 50  0001 C CNN
F 1 "GND" H 4055 3927 50  0000 C CNN
F 2 "" H 4050 4100 50  0001 C CNN
F 3 "" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3950 4050 4100
Wire Wire Line
	4700 2950 4450 2950
Wire Wire Line
	4700 3050 4450 3050
Text Label 4700 2950 2    50   ~ 0
SCL
Text Label 4700 3050 2    50   ~ 0
SDA
$Comp
L Device:R_US R11
U 1 1 5FCE9866
P 4850 3400
F 0 "R11" H 4782 3354 50  0000 R CNN
F 1 "10k" H 4782 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4890 3390 50  0001 C CNN
F 3 "~" H 4850 3400 50  0001 C CNN
	1    4850 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5FCEA37B
P 5150 3400
F 0 "R12" H 5082 3354 50  0000 R CNN
F 1 "10k" H 5082 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5190 3390 50  0001 C CNN
F 3 "~" H 5150 3400 50  0001 C CNN
	1    5150 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R14
U 1 1 5FCEA731
P 5450 3400
F 0 "R14" H 5382 3354 50  0000 R CNN
F 1 "10k" H 5382 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5490 3390 50  0001 C CNN
F 3 "~" H 5450 3400 50  0001 C CNN
	1    5450 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3250 4850 3150
Wire Wire Line
	4850 3150 5150 3150
Wire Wire Line
	5450 3150 5450 3250
Wire Wire Line
	5150 3250 5150 3150
Connection ~ 5150 3150
Wire Wire Line
	5150 3150 5450 3150
Wire Wire Line
	4700 3550 4700 3450
Wire Wire Line
	4700 3450 4450 3450
Wire Wire Line
	4700 3550 4850 3550
Wire Wire Line
	5150 3550 5150 3600
Wire Wire Line
	5150 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3550
Wire Wire Line
	4600 3550 4450 3550
Wire Wire Line
	4450 3650 5450 3650
Wire Wire Line
	5450 3650 5450 3550
Text Label 4900 3150 0    50   ~ 0
3V3
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5FD20D2B
P 1250 4450
F 0 "Q1" H 1455 4496 50  0000 L CNN
F 1 "BSS123L" H 1455 4405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1450 4375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 1250 4450 50  0001 L CNN
	1    1250 4450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FD230E4
P 1150 4750
F 0 "#PWR0114" H 1150 4500 50  0001 C CNN
F 1 "GND" H 1155 4577 50  0000 C CNN
F 2 "" H 1150 4750 50  0001 C CNN
F 3 "" H 1150 4750 50  0001 C CNN
	1    1150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4650 1150 4750
$Comp
L Device:R_US R1
U 1 1 5FD35D34
P 1650 4250
F 0 "R1" H 1718 4296 50  0000 L CNN
F 1 "10k" H 1718 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1690 4240 50  0001 C CNN
F 3 "~" H 1650 4250 50  0001 C CNN
	1    1650 4250
	1    0    0    -1  
$EndComp
Text Label 1250 4150 0    50   ~ 0
HV_EN
Wire Wire Line
	1500 4150 1150 4150
Wire Wire Line
	1150 4150 1150 4250
Text Label 1300 3950 0    50   ~ 0
5V_RELAY
Wire Wire Line
	1450 4450 1650 4450
Wire Wire Line
	1650 4450 1650 4400
Wire Wire Line
	1300 3950 1650 3950
Wire Wire Line
	1650 3950 1650 4100
Wire Wire Line
	1650 4450 1900 4450
Wire Wire Line
	1900 4450 1900 3550
Connection ~ 1650 4450
Wire Wire Line
	1900 3550 1950 3550
Text Label 8550 1000 0    50   ~ 0
SCL
Text Label 8550 900  0    50   ~ 0
SDA
Wire Wire Line
	3150 6900 3950 6900
Wire Wire Line
	2750 3350 2800 3350
Wire Wire Line
	2800 3350 2800 3450
Wire Wire Line
	2750 3450 2800 3450
Connection ~ 2800 3450
Wire Wire Line
	2800 3450 2800 3850
$Comp
L power:Earth #PWR0115
U 1 1 5FE35CE4
P 2350 7450
F 0 "#PWR0115" H 2350 7200 50  0001 C CNN
F 1 "Earth" H 2350 7300 50  0001 C CNN
F 2 "" H 2350 7450 50  0001 C CNN
F 3 "~" H 2350 7450 50  0001 C CNN
	1    2350 7450
	1    0    0    -1  
$EndComp
NoConn ~ 4450 3150
NoConn ~ 1950 3350
NoConn ~ 1950 3450
NoConn ~ 5650 1200
NoConn ~ 5650 1500
Wire Wire Line
	8550 900  9050 900 
Wire Wire Line
	9050 1000 8550 1000
NoConn ~ 9050 1100
NoConn ~ 9550 1100
NoConn ~ 9550 1200
NoConn ~ 9550 1300
NoConn ~ 9050 1300
NoConn ~ 9050 1400
NoConn ~ 9050 1500
NoConn ~ 9550 1500
NoConn ~ 9550 1600
NoConn ~ 9050 1700
NoConn ~ 9050 1800
NoConn ~ 9050 1900
NoConn ~ 9050 2100
NoConn ~ 9050 2200
NoConn ~ 9050 2400
NoConn ~ 9050 2500
NoConn ~ 9050 2600
NoConn ~ 9550 2700
NoConn ~ 9550 2600
NoConn ~ 9550 2500
NoConn ~ 9550 2300
NoConn ~ 9550 2100
NoConn ~ 9550 2000
NoConn ~ 9550 1900
NoConn ~ 9550 1800
NoConn ~ 9050 2300
Wire Wire Line
	6950 5750 6750 5750
Wire Wire Line
	6750 5750 6750 6100
$Comp
L power:GND #PWR0116
U 1 1 5FB61062
P 6750 6100
F 0 "#PWR0116" H 6750 5850 50  0001 C CNN
F 1 "GND" H 6755 5927 50  0000 C CNN
F 2 "" H 6750 6100 50  0001 C CNN
F 3 "" H 6750 6100 50  0001 C CNN
	1    6750 6100
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54C D4
U 1 1 5FB7DF57
P 5750 4100
F 0 "D4" V 5704 4188 50  0000 L CNN
F 1 "BAT54C" V 5795 4188 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5825 4225 50  0001 L CNN
F 3 "http://www.diodes.com/_files/datasheets/ds11005.pdf" H 5670 4100 50  0001 C CNN
	1    5750 4100
	0    1    1    0   
$EndComp
Text Label 6550 5250 0    50   ~ 0
3V3USB
Text Label 6550 5150 0    50   ~ 0
5VUSB
Wire Wire Line
	6550 5150 6950 5150
Wire Wire Line
	6550 5250 6950 5250
Text Label 6150 3750 2    50   ~ 0
3V3USB
Text Label 8550 1600 0    50   ~ 0
3V3RPI
Text Label 6200 4450 2    50   ~ 0
3V3RPI
Text Label 2850 2950 0    50   ~ 0
COIN_POLARITY_LV
Text Label 3800 4750 0    50   ~ 0
COIN_TEST_RELAY_LV
Text Label 2850 3250 0    50   ~ 0
FXS_TO_COIN_LV
Text Label 2850 3150 0    50   ~ 0
CO_HOLD_LV
Wire Wire Line
	3650 2950 2750 2950
Wire Wire Line
	2750 3250 3650 3250
$Comp
L power:GND #PWR0117
U 1 1 5FC372AA
P 2800 3850
F 0 "#PWR0117" H 2800 3600 50  0001 C CNN
F 1 "GND" H 2805 3677 50  0000 C CNN
F 2 "" H 2800 3850 50  0001 C CNN
F 3 "" H 2800 3850 50  0001 C CNN
	1    2800 3850
	1    0    0    -1  
$EndComp
Text Label 2950 3350 0    50   ~ 0
OFF_HOOK_F
Text Label 2950 3450 0    50   ~ 0
OFF_HOOK_R
Wire Wire Line
	2950 3350 3650 3350
Wire Wire Line
	2950 3450 3650 3450
$Comp
L Device:C C5
U 1 1 5FC5B5B3
P 4900 4150
F 0 "C5" H 5015 4196 50  0000 L CNN
F 1 ".1uF" H 5015 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 4000 50  0001 C CNN
F 3 "~" H 4900 4150 50  0001 C CNN
	1    4900 4150
	1    0    0    -1  
$EndComp
Text Label 5000 3950 0    50   ~ 0
3V3
Wire Wire Line
	4900 4000 4900 3950
Wire Wire Line
	4900 3950 5150 3950
$Comp
L power:GND #PWR0118
U 1 1 5FC66594
P 4900 4400
F 0 "#PWR0118" H 4900 4150 50  0001 C CNN
F 1 "GND" H 4905 4227 50  0000 C CNN
F 2 "" H 4900 4400 50  0001 C CNN
F 3 "" H 4900 4400 50  0001 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4400 4900 4300
$Comp
L Device:C C6
U 1 1 5FC72378
P 5400 4350
F 0 "C6" H 5515 4396 50  0000 L CNN
F 1 "1uF" H 5515 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 4200 50  0001 C CNN
F 3 "~" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FC7C08A
P 5400 4600
F 0 "#PWR0119" H 5400 4350 50  0001 C CNN
F 1 "GND" H 5405 4427 50  0000 C CNN
F 2 "" H 5400 4600 50  0001 C CNN
F 3 "" H 5400 4600 50  0001 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4600 5400 4500
Wire Wire Line
	5400 4200 5400 4100
Text Label 5400 4100 0    50   ~ 0
3V3
Wire Wire Line
	5400 4100 5550 4100
Wire Wire Line
	5750 4450 5750 4400
Wire Wire Line
	5750 4450 6200 4450
Wire Wire Line
	6150 3750 5750 3750
Wire Wire Line
	5750 3750 5750 3800
$Comp
L Diode:BAT54C D6
U 1 1 5FD39E6C
P 7700 3500
F 0 "D6" V 7654 3588 50  0000 L CNN
F 1 "BAT54C" V 7745 3588 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7775 3625 50  0001 L CNN
F 3 "http://www.diodes.com/_files/datasheets/ds11005.pdf" H 7620 3500 50  0001 C CNN
	1    7700 3500
	0    1    1    0   
$EndComp
Text Label 8100 3150 2    50   ~ 0
5VUSB
Text Label 8150 3850 2    50   ~ 0
5VRPI
$Comp
L Device:C C7
U 1 1 5FD39E74
P 7350 3750
F 0 "C7" H 7465 3796 50  0000 L CNN
F 1 "1uF" H 7465 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7388 3600 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FD39E7A
P 7350 4000
F 0 "#PWR0120" H 7350 3750 50  0001 C CNN
F 1 "GND" H 7355 3827 50  0000 C CNN
F 2 "" H 7350 4000 50  0001 C CNN
F 3 "" H 7350 4000 50  0001 C CNN
	1    7350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4000 7350 3900
Wire Wire Line
	7350 3600 7350 3500
Text Label 7350 3500 0    50   ~ 0
5V
Wire Wire Line
	7350 3500 7500 3500
Wire Wire Line
	7700 3850 7700 3800
Wire Wire Line
	7700 3850 8150 3850
Wire Wire Line
	8100 3150 7700 3150
Wire Wire Line
	7700 3150 7700 3200
$Sheet
S 6950 5000 850  850 
U 5FDC9904
F0 "USB Controller Interface" 50
F1 "USBCon.sch" 50
F2 "VUSBUS" I L 6950 5150 50 
F3 "GND" I L 6950 5750 50 
F4 "3V3USB" I L 6950 5250 50 
F5 "SDA" B R 7800 5150 50 
F6 "SCL" B R 7800 5250 50 
$EndSheet
Wire Wire Line
	7350 3500 6950 3500
Connection ~ 7350 3500
Text Label 6950 3500 0    50   ~ 0
5V_RELAY
Text Label 8050 5150 2    50   ~ 0
SDA
Wire Wire Line
	8050 5150 7800 5150
Wire Wire Line
	7800 5250 8050 5250
Text Label 8050 5250 2    50   ~ 0
SCL
$Comp
L Mechanical:MountingHole H1
U 1 1 5FDD0277
P 8050 1700
F 0 "H1" H 8150 1746 50  0000 L CNN
F 1 "M2.5" H 8150 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 8050 1700 50  0001 C CNN
F 3 "~" H 8050 1700 50  0001 C CNN
	1    8050 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FDDD6B4
P 8050 1900
F 0 "H2" H 8150 1946 50  0000 L CNN
F 1 "M2.5" H 8150 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 8050 1900 50  0001 C CNN
F 3 "~" H 8050 1900 50  0001 C CNN
	1    8050 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FDDDD20
P 7650 1700
F 0 "H3" H 7750 1746 50  0000 L CNN
F 1 "M2.5" H 7750 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 7650 1700 50  0001 C CNN
F 3 "~" H 7650 1700 50  0001 C CNN
	1    7650 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FDDDF7B
P 7650 1900
F 0 "H4" H 7750 1946 50  0000 L CNN
F 1 "M2.5" H 7750 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 7650 1900 50  0001 C CNN
F 3 "~" H 7650 1900 50  0001 C CNN
	1    7650 1900
	1    0    0    -1  
$EndComp
$Comp
L Relay:IM00 K?
U 1 1 5FE2C154
P 4550 1300
AR Path="/5FA767FA/5FE2C154" Ref="K?"  Part="1" 
AR Path="/5FE2C154" Ref="K2"  Part="1" 
F 0 "K2" V 3783 1300 50  0000 C CNN
F 1 "HFD4/5-S" V 3874 1300 50  0000 C CNN
F 2 "Relay_SMD:Relay_DPDT_Omron_G6K-2F-Y" H 4350 1300 50  0001 C CNN
F 3 "" H 4350 1300 50  0001 C CNN
	1    4550 1300
	0    -1   1    0   
$EndComp
Wire Wire Line
	3450 900  2950 900 
Wire Wire Line
	1750 900  2350 900 
$Comp
L Connector:6P6C J2
U 1 1 5FE67835
P 6050 1300
F 0 "J2" H 5720 1304 50  0000 R CNN
F 1 "6P6C" H 5720 1395 50  0000 R CNN
F 2 "coin-trunker:RJ12_Molex_95501-6669" V 6050 1325 50  0001 C CNN
F 3 "~" V 6050 1325 50  0001 C CNN
	1    6050 1300
	-1   0    0    1   
$EndComp
NoConn ~ 1350 1750
NoConn ~ 1350 1250
NoConn ~ 5650 1600
NoConn ~ 5650 1100
Text Label 2950 3550 0    50   ~ 0
HV_EN_LV
$Comp
L Device:R_US R20
U 1 1 5FCF667E
P 7050 900
F 0 "R20" H 6982 854 50  0000 R CNN
F 1 "10k" H 6982 945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7090 890 50  0001 C CNN
F 3 "~" H 7050 900 50  0001 C CNN
	1    7050 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5FCF6E03
P 6750 900
F 0 "R19" H 6682 854 50  0000 R CNN
F 1 "10k" H 6682 945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6790 890 50  0001 C CNN
F 3 "~" H 6750 900 50  0001 C CNN
	1    6750 900 
	-1   0    0    1   
$EndComp
Text Label 7150 1200 0    50   ~ 0
SDA
Text Label 6800 1200 0    50   ~ 0
SCL
Text Label 7200 700  0    50   ~ 0
3V3
Wire Wire Line
	7200 700  7050 700 
Wire Wire Line
	6750 700  6750 750 
Wire Wire Line
	7050 700  7050 750 
Connection ~ 7050 700 
Wire Wire Line
	7050 700  6750 700 
Wire Wire Line
	6750 1050 6750 1200
Wire Wire Line
	6750 1200 6950 1200
Wire Wire Line
	7300 1200 7050 1200
Wire Wire Line
	7050 1200 7050 1050
Text Label 3000 3650 0    50   ~ 0
COIN_TEST
Wire Wire Line
	3000 3650 3650 3650
Text Notes 8050 6200 0    39   ~ 0
Copyright Brady O’Brien 2021\n\nThis source describes Open Hardware and is licensed under the CERN-OHL-W v2\n\nYou may redistribute and modify this documentation and make products using it under\nthe terms of the CERN-OHL-W v2 (https:/cern.ch/cern-ohl). This documentation is\ndistributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,\nSATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the\nCERN-OHL-W v2 for applicable conditions.\n\nSource location: https://github.com/baobrien/coin-thing
Wire Notes Line
	8000 5450 8000 6300
Wire Notes Line
	8000 6300 10850 6300
Wire Notes Line
	10850 6300 10850 5450
Wire Notes Line
	10850 5450 8000 5450
$Comp
L Relay:IM00 K?
U 1 1 5FE20380
P 2650 1300
AR Path="/5FA767FA/5FE20380" Ref="K?"  Part="1" 
AR Path="/5FE20380" Ref="K1"  Part="1" 
F 0 "K1" V 1883 1300 50  0000 C CNN
F 1 "HFD4/5-S" V 1974 1300 50  0000 C CNN
F 2 "Relay_SMD:Relay_DPDT_Omron_G6K-2F-Y" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2650 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1200 4250 1200
Wire Wire Line
	2950 1600 4250 1600
Wire Wire Line
	3250 1800 2950 1800
$Comp
L coin_trunker_parts:LTV-217 U5
U 1 1 6033624A
P 5950 2400
F 0 "U5" H 5950 2725 50  0000 C CNN
F 1 "LTV-217" H 5950 2634 50  0000 C CNN
F 2 "Package_SO:SOP-4_4.4x2.6mm_P1.27mm" H 5750 2200 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2009-0014/LTV-2X7%20sereis%20Mar17.PDF" H 5950 2400 50  0001 L CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
$Comp
L coin_trunker_parts:LTV-217 U8
U 1 1 6033877C
P 5950 2950
F 0 "U8" H 5950 3275 50  0000 C CNN
F 1 "LTV-217" H 5950 3184 50  0000 C CNN
F 2 "Package_SO:SOP-4_4.4x2.6mm_P1.27mm" H 5750 2750 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2009-0014/LTV-2X7%20sereis%20Mar17.PDF" H 5950 2950 50  0001 L CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J5
U 1 1 60447A12
P 2100 7300
F 0 "J5" H 2018 7075 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 2018 7166 50  0000 C CNN
F 2 "coin-trunker:screw_block_m3_5x7" H 2100 7300 50  0001 C CNN
F 3 "~" H 2100 7300 50  0001 C CNN
	1    2100 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 604E836D
P 9300 3350
F 0 "D7" H 9300 3200 50  0000 C CNN
F 1 "LED" H 9150 3200 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9300 3350 50  0001 C CNN
F 3 "~" H 9300 3350 50  0001 C CNN
	1    9300 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R21
U 1 1 6045A1C3
P 8900 3350
F 0 "R21" V 8800 3300 50  0000 R CNN
F 1 "470" V 8800 3500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8940 3340 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3350
	0    1    1    0   
$EndComp
Text Label 8500 3350 0    50   ~ 0
5V
Wire Wire Line
	8500 3350 8750 3350
Wire Wire Line
	9050 3350 9150 3350
$Comp
L power:GND #PWR0129
U 1 1 60478A52
P 10650 3500
F 0 "#PWR0129" H 10650 3250 50  0001 C CNN
F 1 "GND" H 10655 3327 50  0000 C CNN
F 2 "" H 10650 3500 50  0001 C CNN
F 3 "" H 10650 3500 50  0001 C CNN
	1    10650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 604849DC
P 9300 3600
F 0 "D9" H 9300 3450 50  0000 C CNN
F 1 "LED" H 9150 3450 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9300 3600 50  0001 C CNN
F 3 "~" H 9300 3600 50  0001 C CNN
	1    9300 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R22
U 1 1 604849FA
P 8900 3600
F 0 "R22" V 8800 3550 50  0000 R CNN
F 1 "470" V 8800 3750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8940 3590 50  0001 C CNN
F 3 "~" H 8900 3600 50  0001 C CNN
	1    8900 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3600 8750 3600
Wire Wire Line
	9050 3600 9150 3600
$Comp
L Device:LED D10
U 1 1 60490253
P 9300 3850
F 0 "D10" H 9300 3700 50  0000 C CNN
F 1 "LED" H 9150 3700 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9300 3850 50  0001 C CNN
F 3 "~" H 9300 3850 50  0001 C CNN
	1    9300 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R23
U 1 1 60490259
P 8900 3850
F 0 "R23" V 8800 3800 50  0000 R CNN
F 1 "470" V 8800 4000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8940 3840 50  0001 C CNN
F 3 "~" H 8900 3850 50  0001 C CNN
	1    8900 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 3850 9150 3850
$Comp
L Device:LED D11
U 1 1 6049A1E0
P 9300 4100
F 0 "D11" H 9300 3950 50  0000 C CNN
F 1 "LED" H 9150 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9300 4100 50  0001 C CNN
F 3 "~" H 9300 4100 50  0001 C CNN
	1    9300 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R24
U 1 1 6049A1E6
P 8900 4100
F 0 "R24" V 8800 4050 50  0000 R CNN
F 1 "470" V 8800 4250 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8940 4090 50  0001 C CNN
F 3 "~" H 8900 4100 50  0001 C CNN
	1    8900 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 4100 9150 4100
$Comp
L Device:LED D12
U 1 1 604A4167
P 9300 4350
F 0 "D12" H 9300 4200 50  0000 C CNN
F 1 "LED" H 9150 4200 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9300 4350 50  0001 C CNN
F 3 "~" H 9300 4350 50  0001 C CNN
	1    9300 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R25
U 1 1 604A416D
P 8900 4350
F 0 "R25" V 8800 4300 50  0000 R CNN
F 1 "470" V 8800 4500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8940 4340 50  0001 C CNN
F 3 "~" H 8900 4350 50  0001 C CNN
	1    8900 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 4350 9150 4350
Wire Wire Line
	8500 3850 8750 3850
Wire Wire Line
	8500 4100 8750 4100
Wire Wire Line
	8500 4350 8750 4350
Wire Wire Line
	8500 3350 8500 3600
Connection ~ 8500 3600
Wire Wire Line
	8500 3600 8500 3850
Connection ~ 8500 3850
Wire Wire Line
	8500 3850 8500 4100
Connection ~ 8500 4100
Wire Wire Line
	8500 4100 8500 4350
Text Label 10300 3600 2    50   ~ 0
COIN_POLARITY
Wire Wire Line
	9450 3600 10300 3600
Wire Wire Line
	9450 3850 10300 3850
Wire Wire Line
	9450 4100 10300 4100
Wire Wire Line
	9450 4350 10300 4350
Text Notes 9150 4550 0    50   ~ 0
Blinkinlights
Text Label 10300 3850 2    50   ~ 0
COIN_TEST_RELAY
Text Label 10300 4100 2    50   ~ 0
CO_HOLD
Text Label 10300 4350 2    50   ~ 0
FXS_TO_COIN_1
Wire Wire Line
	10650 3350 10650 3500
Wire Wire Line
	9450 3350 10650 3350
Text Label 11000 4900 2    50   ~ 0
48V
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 604EDA32
P 1550 2100
F 0 "JP1" V 1550 2168 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 1550 2214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1550 2100 50  0001 C CNN
F 3 "~" H 1550 2100 50  0001 C CNN
	1    1550 2100
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 604F0040
P 1850 2100
F 0 "JP2" V 1850 2168 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 1850 2214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1850 2100 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1850 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:6P6C J1
U 1 1 5FE66B70
P 950 1450
F 0 "J1" H 621 1454 50  0000 R CNN
F 1 "6P6C" H 621 1545 50  0000 R CNN
F 2 "coin-trunker:RJ12_Molex_95501-6669" V 950 1475 50  0001 C CNN
F 3 "~" V 950 1475 50  0001 C CNN
	1    950  1450
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 1350 1850 1350
Wire Wire Line
	1850 1350 1850 1950
Wire Wire Line
	1350 1650 1550 1650
Wire Wire Line
	1550 1650 1550 1950
Wire Wire Line
	1850 2250 1850 2400
Wire Wire Line
	1850 2400 1550 2400
Wire Wire Line
	1550 2400 1550 2250
$Comp
L power:Earth #PWR0132
U 1 1 60513BCF
P 1550 2450
F 0 "#PWR0132" H 1550 2200 50  0001 C CNN
F 1 "Earth" H 1550 2300 50  0001 C CNN
F 2 "" H 1550 2450 50  0001 C CNN
F 3 "~" H 1550 2450 50  0001 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2450 1550 2400
Connection ~ 1550 2400
Text Label 1600 2400 0    50   ~ 0
GND_PHONE
Text Notes 700  2250 0    50   ~ 0
Optional jumpers to \nearth board through \nphone line
$Comp
L Device:Q_PMOS_GSD Q4
U 1 1 60584D94
P 2850 4900
F 0 "Q4" H 3055 4854 50  0000 L CNN
F 1 "BSS84" H 3055 4945 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3050 5000 50  0001 C CNN
F 3 "~" H 2850 4900 50  0001 C CNN
	1    2850 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 7300 2350 7300
Wire Wire Line
	3150 7300 3150 6900
Wire Wire Line
	2350 7450 2350 7300
Connection ~ 2350 7300
Wire Wire Line
	2350 7300 3150 7300
$Comp
L Device:C C13
U 1 1 605C88C0
P 3950 5150
F 0 "C13" V 3900 5200 50  0000 L CNN
F 1 "1uF" V 4000 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 5000 50  0001 C CNN
F 3 "~" H 3950 5150 50  0001 C CNN
	1    3950 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R28
U 1 1 605CA034
P 3300 4950
F 0 "R28" H 3150 5050 50  0000 L CNN
F 1 "500k" H 3100 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3340 4940 50  0001 C CNN
F 3 "~" H 3300 4950 50  0001 C CNN
	1    3300 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R27
U 1 1 605CB1CB
P 2750 5400
F 0 "R27" H 2818 5446 50  0000 L CNN
F 1 "10k" H 2818 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2790 5390 50  0001 C CNN
F 3 "~" H 2750 5400 50  0001 C CNN
	1    2750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D15
U 1 1 605DA6D3
P 3500 4950
F 0 "D15" V 3350 5000 50  0000 L CNN
F 1 "1N4148WS" V 3450 5050 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 3500 4950 50  0001 C CNN
F 3 "~" H 3500 4950 50  0001 C CNN
	1    3500 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 4900 3100 4900
Wire Wire Line
	3100 4900 3100 5150
Wire Wire Line
	3100 5150 3300 5150
Wire Wire Line
	3500 5100 3500 5150
Connection ~ 3500 5150
Wire Wire Line
	3500 5150 3800 5150
Wire Wire Line
	3300 5100 3300 5150
Connection ~ 3300 5150
Wire Wire Line
	3300 5150 3500 5150
Wire Wire Line
	2750 4700 2750 4600
Wire Wire Line
	2750 4600 3300 4600
Wire Wire Line
	3300 4600 3300 4800
Wire Wire Line
	3300 4600 3500 4600
Wire Wire Line
	3500 4600 3500 4800
Connection ~ 3300 4600
Wire Wire Line
	2750 5700 2750 5550
$Comp
L power:GND #PWR0133
U 1 1 60639C2C
P 2750 5700
F 0 "#PWR0133" H 2750 5450 50  0001 C CNN
F 1 "GND" H 2755 5527 50  0000 C CNN
F 2 "" H 2750 5700 50  0001 C CNN
F 3 "" H 2750 5700 50  0001 C CNN
	1    2750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3050 3550 3050
Wire Wire Line
	3550 3050 3550 4350
Wire Wire Line
	3550 4350 3750 4350
Wire Wire Line
	3750 4350 3750 4750
Wire Wire Line
	3750 4750 4200 4750
Wire Wire Line
	4100 5150 4200 5150
Wire Wire Line
	4200 4750 4200 5150
Wire Wire Line
	3650 3550 2750 3550
Wire Wire Line
	2750 5100 2750 5150
Text Label 2850 3050 0    50   ~ 0
CT_LV_L
Wire Wire Line
	2750 3050 3500 3050
Wire Wire Line
	2750 3150 3650 3150
Wire Wire Line
	3500 3050 3500 4350
Wire Wire Line
	3500 4350 2350 4350
Wire Wire Line
	2350 4350 2350 5150
Wire Wire Line
	2350 5150 2750 5150
Connection ~ 2750 5150
Wire Wire Line
	2750 5150 2750 5250
Text Notes 3000 5300 0    50   ~ 0
Coin test time limiter
Text Notes 3000 5500 0    50   ~ 0
Prevents coin-test relay for being \nheld for more than 250ms
Text Notes 3000 5700 0    50   ~ 0
R7 in coin test circuit dissipates\nup to 5W in coin-test mode
Text Label 2950 4600 0    50   ~ 0
3V3
$Comp
L Device:C C15
U 1 1 606E5211
P 5350 5450
F 0 "C15" H 5250 5350 50  0000 L CNN
F 1 "270pF" H 5100 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5388 5300 50  0001 C CNN
F 3 "~" H 5350 5450 50  0001 C CNN
	1    5350 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 606F1515
P 4900 5450
F 0 "C14" H 4800 5350 50  0000 L CNN
F 1 "270pF" H 4650 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 5300 50  0001 C CNN
F 3 "~" H 4900 5450 50  0001 C CNN
	1    4900 5450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 606F3336
P 5100 5750
F 0 "#PWR0134" H 5100 5500 50  0001 C CNN
F 1 "GND" H 5105 5577 50  0000 C CNN
F 2 "" H 5100 5750 50  0001 C CNN
F 3 "" H 5100 5750 50  0001 C CNN
	1    5100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5700 5100 5700
Wire Wire Line
	5100 5700 5100 5750
Wire Wire Line
	4900 5600 4900 5700
Wire Wire Line
	5100 5700 5350 5700
Wire Wire Line
	5350 5700 5350 5600
Connection ~ 5100 5700
Wire Wire Line
	4900 5300 4900 5200
Wire Wire Line
	4900 5200 5100 5200
Wire Wire Line
	5350 5300 5350 5200
Wire Wire Line
	5350 5200 5550 5200
Text Label 5100 5200 2    50   ~ 0
SDA
Text Label 5550 5200 2    50   ~ 0
SCL
$EndSCHEMATC
