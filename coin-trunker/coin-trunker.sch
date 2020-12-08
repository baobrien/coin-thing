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
Text Label 3300 1600 2    50   ~ 0
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
P 9850 5400
F 0 "J4" H 9907 5717 50  0000 C CNN
F 1 "Barrel_Jack_Switch_MountingPin" H 9907 5626 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 9900 5360 50  0001 C CNN
F 3 "~" H 9900 5360 50  0001 C CNN
F 4 "PJ-102AH" H 9850 5400 50  0001 C CNN "Part"
	1    9850 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F942022
P 10400 5600
F 0 "#PWR0101" H 10400 5350 50  0001 C CNN
F 1 "GND" H 10405 5427 50  0000 C CNN
F 2 "" H 10400 5600 50  0001 C CNN
F 3 "" H 10400 5600 50  0001 C CNN
	1    10400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5400 10400 5400
Wire Wire Line
	10400 5400 10400 5500
Wire Wire Line
	10150 5500 10400 5500
Connection ~ 10400 5500
Wire Wire Line
	10400 5500 10400 5600
Wire Wire Line
	10400 5300 10150 5300
Text Label 10400 5300 2    50   ~ 0
48V
$Sheet
S 1500 5350 650  750 
U 5FA3EC89
F0 "HVSupply" 50
F1 "HVSupply.sch" 50
F2 "VIN" I L 1500 5550 50 
F3 "VOUT_P" O R 2150 5550 50 
F4 "VOUT_N" O R 2150 5650 50 
F5 "GND" I L 1500 5650 50 
F6 "HV_EN" I L 1500 5850 50 
$EndSheet
$Comp
L power:GND #PWR0102
U 1 1 5FA571E7
P 950 5750
F 0 "#PWR0102" H 950 5500 50  0001 C CNN
F 1 "GND" H 955 5577 50  0000 C CNN
F 2 "" H 950 5750 50  0001 C CNN
F 3 "" H 950 5750 50  0001 C CNN
	1    950  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5550 1250 5550
Text Label 1250 5550 0    50   ~ 0
48V
Wire Wire Line
	950  5650 950  5750
Wire Wire Line
	950  5650 1500 5650
Wire Wire Line
	1500 5850 1250 5850
Text Label 1250 5850 0    50   ~ 0
HV_EN
Text Label 2250 5550 0    50   ~ 0
HV_P
Text Label 2250 5650 0    50   ~ 0
HV_N
$Sheet
S 3550 5300 1150 1100
U 5FA767FA
F0 "Coin Test and Collect" 50
F1 "CoinTestCollect.sch" 50
F2 "HV_P" I L 3550 5550 50 
F3 "HV_N" I L 3550 5650 50 
F4 "T_COIN" I L 3550 5850 50 
F5 "GND" I L 3550 6200 50 
F6 "5V_RELAY" I L 3550 5350 50 
F7 "COIN_POLARITY" I R 4700 5550 50 
F8 "COIN_TEST_R" I R 4700 5650 50 
F9 "COIN_TEST" I R 4700 6000 50 
F10 "3V3" I L 3550 5450 50 
F11 "GND_PHONE" I L 3550 6050 50 
$EndSheet
$Comp
L power:GND #PWR0103
U 1 1 5FAB9BA9
P 3350 6300
F 0 "#PWR0103" H 3350 6050 50  0001 C CNN
F 1 "GND" H 3355 6127 50  0000 C CNN
F 2 "" H 3350 6300 50  0001 C CNN
F 3 "" H 3350 6300 50  0001 C CNN
	1    3350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6200 3350 6300
Text Label 3200 5850 0    50   ~ 0
T_COIN
Wire Wire Line
	3550 5450 3200 5450
Wire Wire Line
	3550 5350 3200 5350
Text Label 3200 5350 0    50   ~ 0
5V_RELAY
Text Label 3200 5450 0    50   ~ 0
3V3
$Comp
L Transistor_Array:ULN2003 U1
U 1 1 5FAC4CEA
P 2350 3150
F 0 "U1" H 2350 3817 50  0000 C CNN
F 1 "ULN2003LV" H 2350 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 2400 2600 50  0001 L CNN
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
Text Label 4900 5550 0    50   ~ 0
COIN_POLARITY
Text Label 4900 5650 0    50   ~ 0
COIN_TEST_RELAY
Wire Wire Line
	4700 5550 5550 5550
Wire Wire Line
	5550 5650 4700 5650
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
	9550 950  10000 950 
Wire Wire Line
	10000 950  10000 1050
Wire Wire Line
	10000 1050 9550 1050
Text Label 10000 950  2    50   ~ 0
5VRPI
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5FAF0804
P 9250 1850
F 0 "J3" H 9300 2967 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9300 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9250 1850 50  0001 C CNN
F 3 "~" H 9250 1850 50  0001 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 950  9050 950 
Text Label 8550 950  0    50   ~ 0
3V3RPI
$Comp
L power:GND #PWR0105
U 1 1 5FAF6076
P 8950 2950
F 0 "#PWR0105" H 8950 2700 50  0001 C CNN
F 1 "GND" H 8955 2777 50  0000 C CNN
F 2 "" H 8950 2950 50  0001 C CNN
F 3 "" H 8950 2950 50  0001 C CNN
	1    8950 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FAFBA42
P 9650 2950
F 0 "#PWR0106" H 9650 2700 50  0001 C CNN
F 1 "GND" H 9655 2777 50  0000 C CNN
F 2 "" H 9650 2950 50  0001 C CNN
F 3 "" H 9650 2950 50  0001 C CNN
	1    9650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2950 8950 2850
Wire Wire Line
	8950 2850 9050 2850
Wire Wire Line
	9050 2150 8950 2150
Wire Wire Line
	8950 2150 8950 2850
Connection ~ 8950 2850
Wire Wire Line
	9050 1350 8950 1350
Wire Wire Line
	8950 1350 8950 2150
Connection ~ 8950 2150
Wire Wire Line
	9550 1550 9650 1550
Wire Wire Line
	9650 1550 9650 1850
Wire Wire Line
	9550 1850 9650 1850
Connection ~ 9650 1850
Wire Wire Line
	9650 1850 9650 2350
Wire Wire Line
	9550 2350 9650 2350
Connection ~ 9650 2350
Wire Wire Line
	9650 2350 9650 2550
Wire Wire Line
	9550 2550 9650 2550
Connection ~ 9650 2550
Wire Wire Line
	9550 1150 9650 1150
Wire Wire Line
	9650 1150 9650 1550
Connection ~ 9650 1550
Wire Wire Line
	9650 2550 9650 2950
Wire Wire Line
	8550 1750 9050 1750
Wire Wire Line
	3550 5650 2150 5650
Wire Wire Line
	2150 5550 3550 5550
Wire Wire Line
	5550 6000 4700 6000
Text Label 5550 6000 2    50   ~ 0
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
L Isolator:ILD74 U5
U 1 1 5FBB4DF0
P 5950 2400
F 0 "U5" H 5950 2725 50  0000 C CNN
F 1 "ILD74" H 5950 2634 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5750 2200 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83640/ild74.pdf" H 5950 2400 50  0001 L CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
$Comp
L Isolator:ILD74 U5
U 2 1 5FBB5638
P 5950 2950
F 0 "U5" H 5950 3275 50  0000 C CNN
F 1 "ILD74" H 5950 3184 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5750 2750 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83640/ild74.pdf" H 5950 2950 50  0001 L CNN
	2    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5FBB6E50
P 3750 2250
F 0 "R10" V 3545 2250 50  0000 C CNN
F 1 "120 2W" V 3636 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0612_1632Metric" V 3790 2240 50  0001 C CNN
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
	3450 1400 3450 1200
Wire Wire Line
	3450 1200 4250 1200
Wire Wire Line
	2950 1400 3450 1400
Wire Wire Line
	4250 1600 3400 1600
Wire Wire Line
	3400 1600 3400 1800
Wire Wire Line
	2950 1800 3400 1800
Wire Wire Line
	3350 6200 3550 6200
Wire Wire Line
	3200 5850 3550 5850
Text Label 3000 6050 0    50   ~ 0
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
Text Label 8550 1150 0    50   ~ 0
SCL
Text Label 8550 1050 0    50   ~ 0
SDA
Wire Wire Line
	2750 6800 2750 6050
Wire Wire Line
	2750 6050 3550 6050
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
L Connector:Screw_Terminal_01x02 J5
U 1 1 5FE20B70
P 1900 6850
F 0 "J5" H 1818 6525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1818 6616 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 1900 6850 50  0001 C CNN
F 3 "~" H 1900 6850 50  0001 C CNN
F 4 "1725656" H 1900 6850 50  0001 C CNN "Part"
	1    1900 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 6750 2350 6750
Wire Wire Line
	2350 6750 2350 6800
Wire Wire Line
	2350 6800 2750 6800
Wire Wire Line
	2350 6800 2350 6850
Wire Wire Line
	2350 6850 2100 6850
Connection ~ 2350 6800
$Comp
L power:Earth #PWR0115
U 1 1 5FE35CE4
P 2350 7000
F 0 "#PWR0115" H 2350 6750 50  0001 C CNN
F 1 "Earth" H 2350 6850 50  0001 C CNN
F 2 "" H 2350 7000 50  0001 C CNN
F 3 "~" H 2350 7000 50  0001 C CNN
	1    2350 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7000 2350 6850
Connection ~ 2350 6850
NoConn ~ 4450 3150
NoConn ~ 1950 3350
NoConn ~ 1950 3450
NoConn ~ 1350 1350
NoConn ~ 1350 1650
Wire Wire Line
	3300 1600 2950 1600
NoConn ~ 2950 1200
NoConn ~ 5650 1200
NoConn ~ 5650 1500
Wire Wire Line
	8550 1050 9050 1050
Wire Wire Line
	9050 1150 8550 1150
NoConn ~ 9050 1250
NoConn ~ 9550 1250
NoConn ~ 9550 1350
NoConn ~ 9550 1450
NoConn ~ 9050 1450
NoConn ~ 9050 1550
NoConn ~ 9050 1650
NoConn ~ 9550 1650
NoConn ~ 9550 1750
NoConn ~ 9050 1850
NoConn ~ 9050 1950
NoConn ~ 9050 2050
NoConn ~ 9050 2250
NoConn ~ 9050 2350
NoConn ~ 9050 2550
NoConn ~ 9050 2650
NoConn ~ 9050 2750
NoConn ~ 9550 2850
NoConn ~ 9550 2750
NoConn ~ 9550 2650
NoConn ~ 9550 2450
NoConn ~ 9550 2250
NoConn ~ 9550 2150
NoConn ~ 9550 2050
NoConn ~ 9550 1950
NoConn ~ 9050 2450
Wire Wire Line
	6700 5400 6500 5400
Wire Wire Line
	6500 5400 6500 5750
$Comp
L power:GND #PWR0116
U 1 1 5FB61062
P 6500 5750
F 0 "#PWR0116" H 6500 5500 50  0001 C CNN
F 1 "GND" H 6505 5577 50  0000 C CNN
F 2 "" H 6500 5750 50  0001 C CNN
F 3 "" H 6500 5750 50  0001 C CNN
	1    6500 5750
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
Text Label 6300 4900 0    50   ~ 0
3V3USB
Text Label 6300 4800 0    50   ~ 0
5VUSB
Wire Wire Line
	6300 4800 6700 4800
Wire Wire Line
	6300 4900 6700 4900
Text Label 6150 3750 2    50   ~ 0
3V3USB
Text Label 8550 1750 0    50   ~ 0
3V3RPI
Text Label 6200 4450 2    50   ~ 0
3V3RPI
Text Label 2850 2950 0    50   ~ 0
COIN_POLARITY_LV
Text Label 2850 3050 0    50   ~ 0
COIN_TEST_RELAY_LV
Text Label 2850 3250 0    50   ~ 0
FXS_TO_COIN_LV
Text Label 2850 3150 0    50   ~ 0
CO_HOLD_LV
Wire Wire Line
	3650 2950 2750 2950
Wire Wire Line
	2750 3050 3650 3050
Wire Wire Line
	3650 3150 2750 3150
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
	3650 3550 2750 3550
Wire Wire Line
	2950 3350 3650 3350
Wire Wire Line
	2950 3450 3650 3450
$Comp
L Device:C C5
U 1 1 5FC5B5B3
P 3350 4600
F 0 "C5" H 3465 4646 50  0000 L CNN
F 1 ".1uF" H 3465 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3388 4450 50  0001 C CNN
F 3 "~" H 3350 4600 50  0001 C CNN
	1    3350 4600
	1    0    0    -1  
$EndComp
Text Label 3450 4400 0    50   ~ 0
3V3
Wire Wire Line
	3350 4450 3350 4400
Wire Wire Line
	3350 4400 3600 4400
$Comp
L power:GND #PWR0118
U 1 1 5FC66594
P 3350 4850
F 0 "#PWR0118" H 3350 4600 50  0001 C CNN
F 1 "GND" H 3355 4677 50  0000 C CNN
F 2 "" H 3350 4850 50  0001 C CNN
F 3 "" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4850 3350 4750
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
S 6700 4650 850  850 
U 5FDC9904
F0 "USB Controller Interface" 50
F1 "USBCon.sch" 50
F2 "VUSBUS" I L 6700 4800 50 
F3 "GND" I L 6700 5400 50 
F4 "3V3USB" I L 6700 4900 50 
F5 "SDA" B R 7550 4800 50 
F6 "SCL" B R 7550 4900 50 
$EndSheet
Wire Wire Line
	7350 3500 6950 3500
Connection ~ 7350 3500
Text Label 6950 3500 0    50   ~ 0
5V_RELAY
Text Label 7800 4800 2    50   ~ 0
SDA
Wire Wire Line
	7800 4800 7550 4800
Wire Wire Line
	7550 4900 7800 4900
Text Label 7800 4900 2    50   ~ 0
SCL
$Comp
L Mechanical:MountingHole H1
U 1 1 5FDD0277
P 10450 3650
F 0 "H1" H 10550 3696 50  0000 L CNN
F 1 "M2.5" H 10550 3605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 10450 3650 50  0001 C CNN
F 3 "~" H 10450 3650 50  0001 C CNN
	1    10450 3650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FDDD6B4
P 10450 3850
F 0 "H2" H 10550 3896 50  0000 L CNN
F 1 "M2.5" H 10550 3805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 10450 3850 50  0001 C CNN
F 3 "~" H 10450 3850 50  0001 C CNN
	1    10450 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FDDDD20
P 10450 4050
F 0 "H3" H 10550 4096 50  0000 L CNN
F 1 "M2.5" H 10550 4005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 10450 4050 50  0001 C CNN
F 3 "~" H 10450 4050 50  0001 C CNN
	1    10450 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FDDDF7B
P 10450 4250
F 0 "H4" H 10550 4296 50  0000 L CNN
F 1 "M2.5" H 10550 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 10450 4250 50  0001 C CNN
F 3 "~" H 10450 4250 50  0001 C CNN
	1    10450 4250
	1    0    0    -1  
$EndComp
$Comp
L Relay:IM00 K?
U 1 1 5FE20380
P 2650 1300
AR Path="/5FA767FA/5FE20380" Ref="K?"  Part="1" 
AR Path="/5FE20380" Ref="K1"  Part="1" 
F 0 "K1" V 1883 1300 50  0000 C CNN
F 1 "AGQ200A4" V 1974 1300 50  0000 C CNN
F 2 "Relay_SMD:Relay_DPDT_Omron_G6K-2F-Y" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2650 1300
	0    1    1    0   
$EndComp
$Comp
L Relay:IM00 K?
U 1 1 5FE2C154
P 4550 1300
AR Path="/5FA767FA/5FE2C154" Ref="K?"  Part="1" 
AR Path="/5FE2C154" Ref="K2"  Part="1" 
F 0 "K2" V 3783 1300 50  0000 C CNN
F 1 "AGQ200A4" V 3874 1300 50  0000 C CNN
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
P 7550 850
F 0 "R20" H 7482 804 50  0000 R CNN
F 1 "10k" H 7482 895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7590 840 50  0001 C CNN
F 3 "~" H 7550 850 50  0001 C CNN
	1    7550 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5FCF6E03
P 7250 850
F 0 "R19" H 7182 804 50  0000 R CNN
F 1 "10k" H 7182 895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7290 840 50  0001 C CNN
F 3 "~" H 7250 850 50  0001 C CNN
	1    7250 850 
	-1   0    0    1   
$EndComp
Text Label 7650 1150 0    50   ~ 0
SDA
Text Label 7300 1150 0    50   ~ 0
SCL
Text Label 7700 650  0    50   ~ 0
3V3
Wire Wire Line
	7700 650  7550 650 
Wire Wire Line
	7250 650  7250 700 
Wire Wire Line
	7550 650  7550 700 
Connection ~ 7550 650 
Wire Wire Line
	7550 650  7250 650 
Wire Wire Line
	7250 1000 7250 1150
Wire Wire Line
	7250 1150 7450 1150
Wire Wire Line
	7800 1150 7550 1150
Wire Wire Line
	7550 1150 7550 1000
Text Label 3000 3650 0    50   ~ 0
COIN_TEST
Wire Wire Line
	3000 3650 3650 3650
$EndSCHEMATC
