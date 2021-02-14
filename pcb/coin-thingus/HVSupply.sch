EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Device:D D?
U 1 1 5FA47F8C
P 6800 3200
AR Path="/5FA47F8C" Ref="D?"  Part="1" 
AR Path="/5FA3EC89/5FA47F8C" Ref="D3"  Part="1" 
F 0 "D3" H 6800 2984 50  0000 C CNN
F 1 " CMMR1U-06" H 6800 3075 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 6800 3200 50  0001 C CNN
F 3 "~" H 6800 3200 50  0001 C CNN
F 4 " CMMR1U-06" H 6800 3200 50  0001 C CNN "Part"
	1    6800 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3200 6650 3200
$Comp
L Device:CP1 C?
U 1 1 5FA47F93
P 7250 3400
AR Path="/5FA47F93" Ref="C?"  Part="1" 
AR Path="/5FA3EC89/5FA47F93" Ref="C4"  Part="1" 
F 0 "C4" H 7365 3446 50  0000 L CNN
F 1 "1u" H 7365 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7250 3400 50  0001 C CNN
F 3 "~" H 7250 3400 50  0001 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3200 7250 3200
Wire Wire Line
	7250 3200 7250 3250
Wire Wire Line
	6400 3600 7250 3600
Wire Wire Line
	7250 3600 7250 3550
$Comp
L Device:R_US R?
U 1 1 5FA47F9D
P 5500 4350
AR Path="/5FA47F9D" Ref="R?"  Part="1" 
AR Path="/5FA3EC89/5FA47F9D" Ref="R6"  Part="1" 
F 0 "R6" H 5568 4396 50  0000 L CNN
F 1 "260k" H 5568 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5540 4340 50  0001 C CNN
F 3 "~" H 5500 4350 50  0001 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5FA47FA3
P 5000 4000
AR Path="/5FA47FA3" Ref="R?"  Part="1" 
AR Path="/5FA3EC89/5FA47FA3" Ref="R5"  Part="1" 
F 0 "R5" H 4932 3954 50  0000 R CNN
F 1 "10k" H 4932 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5040 3990 50  0001 C CNN
F 3 "~" H 5000 4000 50  0001 C CNN
	1    5000 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5FA47FA9
P 4700 4000
AR Path="/5FA47FA9" Ref="R?"  Part="1" 
AR Path="/5FA3EC89/5FA47FA9" Ref="R3"  Part="1" 
F 0 "R3" H 4632 3954 50  0000 R CNN
F 1 "100k" H 4632 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4740 3990 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3700 5500 3600
Connection ~ 5500 3600
Wire Wire Line
	5500 3600 5600 3600
Wire Wire Line
	4500 3800 4700 3800
Wire Wire Line
	4700 3800 4700 3850
Wire Wire Line
	4500 3900 4550 3900
Wire Wire Line
	4550 3900 4550 4250
Wire Wire Line
	4550 4250 4700 4250
Wire Wire Line
	4700 4250 4700 4150
Wire Wire Line
	4700 3800 5000 3800
Wire Wire Line
	5000 3800 5000 3850
Connection ~ 4700 3800
$Comp
L power:GND #PWR?
U 1 1 5FA47FBE
P 5000 4400
AR Path="/5FA47FBE" Ref="#PWR?"  Part="1" 
AR Path="/5FA3EC89/5FA47FBE" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5000 4150 50  0001 C CNN
F 1 "GND" H 5005 4227 50  0000 C CNN
F 2 "" H 5000 4400 50  0001 C CNN
F 3 "" H 5000 4400 50  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA47FC4
P 3300 4350
AR Path="/5FA47FC4" Ref="#PWR?"  Part="1" 
AR Path="/5FA3EC89/5FA47FC4" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3300 4100 50  0001 C CNN
F 1 "GND" H 3305 4177 50  0000 C CNN
F 2 "" H 3300 4350 50  0001 C CNN
F 3 "" H 3300 4350 50  0001 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4350 3300 3900
Wire Wire Line
	3300 3800 3650 3800
Wire Wire Line
	3650 3900 3300 3900
Connection ~ 3300 3900
Wire Wire Line
	3300 3900 3300 3800
Wire Wire Line
	4050 3200 4050 3250
Wire Wire Line
	5000 4150 5000 4400
$Comp
L Device:CP1 C?
U 1 1 5FA47FD1
P 2750 3450
AR Path="/5FA47FD1" Ref="C?"  Part="1" 
AR Path="/5FA3EC89/5FA47FD1" Ref="C1"  Part="1" 
F 0 "C1" H 2865 3496 50  0000 L CNN
F 1 "10u" H 2865 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2750 3450 50  0001 C CNN
F 3 "~" H 2750 3450 50  0001 C CNN
	1    2750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3300 2750 3200
Wire Wire Line
	2750 4350 2750 3700
$Comp
L power:GND #PWR?
U 1 1 5FA47FD9
P 2750 4350
AR Path="/5FA47FD9" Ref="#PWR?"  Part="1" 
AR Path="/5FA3EC89/5FA47FD9" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2750 4100 50  0001 C CNN
F 1 "GND" H 2755 4177 50  0000 C CNN
F 2 "" H 2750 4350 50  0001 C CNN
F 3 "" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3200 3100 3200
Connection ~ 4050 3200
$Comp
L Device:CP1 C?
U 1 1 5FA47FE1
P 3500 4150
AR Path="/5FA47FE1" Ref="C?"  Part="1" 
AR Path="/5FA3EC89/5FA47FE1" Ref="C2"  Part="1" 
F 0 "C2" H 3615 4196 50  0000 L CNN
F 1 "1u" H 3615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4000 3500 4000
$Comp
L power:GND #PWR?
U 1 1 5FA47FE8
P 3500 4350
AR Path="/5FA47FE8" Ref="#PWR?"  Part="1" 
AR Path="/5FA3EC89/5FA47FE8" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 3500 4100 50  0001 C CNN
F 1 "GND" H 3505 4177 50  0000 C CNN
F 2 "" H 3500 4350 50  0001 C CNN
F 3 "" H 3500 4350 50  0001 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4300 3500 4350
$Comp
L Device:C C?
U 1 1 5FA47FEF
P 5250 2850
AR Path="/5FA47FEF" Ref="C?"  Part="1" 
AR Path="/5FA3EC89/5FA47FEF" Ref="C3"  Part="1" 
F 0 "C3" H 5365 2896 50  0000 L CNN
F 1 "270p" H 5365 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 2700 50  0001 C CNN
F 3 "~" H 5250 2850 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5FA47FF5
P 4900 2850
AR Path="/5FA47FF5" Ref="R?"  Part="1" 
AR Path="/5FA3EC89/5FA47FF5" Ref="R4"  Part="1" 
F 0 "R4" H 4832 2804 50  0000 R CNN
F 1 "200R" H 4832 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4940 2840 50  0001 C CNN
F 3 "~" H 4900 2850 50  0001 C CNN
	1    4900 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2700 4900 2600
Wire Wire Line
	4900 2600 5250 2600
Wire Wire Line
	5250 2600 5250 2700
Wire Wire Line
	4050 3200 4100 3200
Wire Wire Line
	4500 3600 4750 3600
Wire Wire Line
	4900 3000 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	4900 3600 5500 3600
Wire Wire Line
	5250 3000 5250 3200
Connection ~ 5250 3200
Wire Wire Line
	5250 3200 5600 3200
$Comp
L Device:D_Zener D?
U 1 1 5FA48006
P 4100 2850
AR Path="/5FA48006" Ref="D?"  Part="1" 
AR Path="/5FA3EC89/5FA48006" Ref="D1"  Part="1" 
F 0 "D1" V 4100 2929 50  0000 L CNN
F 1 "D_Zener" V 4145 2929 50  0001 L CNN
F 2 "Diode_SMD:D_SMA" H 4100 2850 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2850
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5FA4800E
P 4550 2850
AR Path="/5FA4800E" Ref="D?"  Part="1" 
AR Path="/5FA3EC89/5FA4800E" Ref="D2"  Part="1" 
F 0 "D2" V 4550 2750 50  0000 C CNN
F 1 "DFLS1150-7" H 4550 2950 50  0000 C CNN
F 2 "Diode_SMD:D_PowerDI-123" H 4550 2850 50  0001 C CNN
F 3 "~" H 4550 2850 50  0001 C CNN
F 4 " CMMR1U-06" H 4550 2850 50  0001 C CNN "Part"
F 5 "DFLS1150-7" V 4550 2850 50  0001 C CNN "part"
	1    4550 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3000 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 5250 3200
Wire Wire Line
	4100 2700 4100 2600
Wire Wire Line
	4100 2600 4550 2600
Wire Wire Line
	4550 2600 4550 2700
Wire Wire Line
	4550 3000 4550 3300
Wire Wire Line
	4550 3300 4750 3300
Wire Wire Line
	4750 3300 4750 3600
Connection ~ 4750 3600
Wire Wire Line
	4750 3600 4900 3600
Text Label 7250 3200 2    50   ~ 0
HV_P
Text Label 7250 3600 2    50   ~ 0
HV_N
Text Label 3150 3600 0    50   ~ 0
HV_EN
$Comp
L Device:R_US R?
U 1 1 5FA48023
P 3100 3400
AR Path="/5FA48023" Ref="R?"  Part="1" 
AR Path="/5FA3EC89/5FA48023" Ref="R2"  Part="1" 
F 0 "R2" H 3032 3354 50  0000 R CNN
F 1 "10k" H 3032 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3140 3390 50  0001 C CNN
F 3 "~" H 3100 3400 50  0001 C CNN
	1    3100 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3250 3100 3200
Connection ~ 3100 3200
Wire Wire Line
	3100 3200 4050 3200
Wire Wire Line
	3100 3550 3100 3600
Wire Wire Line
	3100 3600 3650 3600
Text HLabel 2450 3200 0    50   Input ~ 0
VIN
Text HLabel 7550 3150 2    50   Output ~ 0
VOUT_P
Text HLabel 7550 3600 2    50   Output ~ 0
VOUT_N
Text HLabel 2450 3700 0    50   Input ~ 0
GND
Text HLabel 2450 3950 0    50   Input ~ 0
HV_EN
Wire Wire Line
	3100 3600 2950 3600
Wire Wire Line
	2950 3600 2950 3950
Wire Wire Line
	2950 3950 2450 3950
Connection ~ 3100 3600
Wire Wire Line
	2450 3700 2750 3700
Connection ~ 2750 3700
Wire Wire Line
	2750 3700 2750 3600
Wire Wire Line
	2450 3200 2750 3200
Connection ~ 2750 3200
Wire Wire Line
	7550 3600 7250 3600
Connection ~ 7250 3600
Wire Wire Line
	7550 3150 7250 3150
Wire Wire Line
	7250 3150 7250 3200
Connection ~ 7250 3200
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5FD8194F
P 5500 3850
F 0 "RV1" H 5433 3804 50  0000 R CNN
F 1 "100K" H 5750 3750 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3224X_Vertical" H 5500 3850 50  0001 C CNN
F 3 "~" H 5500 3850 50  0001 C CNN
F 4 "ST4ETB104" H 5500 3850 50  0001 C CNN "Part"
	1    5500 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 3850 5750 3850
Wire Wire Line
	5750 3850 5750 4100
Wire Wire Line
	5750 4100 5500 4100
Wire Wire Line
	5500 4100 5500 4000
Wire Wire Line
	4500 3700 5250 3700
Wire Wire Line
	5250 3700 5250 4600
Wire Wire Line
	5250 4600 5500 4600
Wire Wire Line
	5500 4600 5500 4500
Wire Wire Line
	5500 4100 5500 4200
Connection ~ 5500 4100
$Comp
L Connector:TestPoint TP1
U 1 1 5FD94D5D
P 7250 3050
F 0 "TP1" H 7308 3168 50  0000 L CNN
F 1 "TestPoint" H 7308 3077 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 7450 3050 50  0001 C CNN
F 3 "~" H 7450 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3050 7250 3150
Connection ~ 7250 3150
$Comp
L Connector:TestPoint TP2
U 1 1 5FD96635
P 7250 3700
F 0 "TP2" H 7192 3726 50  0000 R CNN
F 1 "TestPoint" H 7192 3817 50  0000 R CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 7450 3700 50  0001 C CNN
F 3 "~" H 7450 3700 50  0001 C CNN
	1    7250 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 3700 7250 3600
$Comp
L coin_trunker_parts:LT8304 U2
U 1 1 5FDBECF1
P 4150 3800
F 0 "U2" H 4075 3477 50  0000 C CNN
F 1 "LT8304" H 4075 3386 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 4150 3800 50  0001 C CNN
F 3 "" H 4150 3800 50  0001 C CNN
	1    4150 3800
	1    0    0    -1  
$EndComp
$Comp
L coin_trunker_parts:Sumida-13324-TO86 T1
U 1 1 5FE539A6
P 6000 3400
F 0 "T1" H 6000 3781 50  0000 C CNN
F 1 "Sumida-13324-TO86" H 6000 3690 50  0000 C CNN
F 2 "coin-trunker:SUMIDA-S-074-1511" H 6000 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
Text Notes 8200 6200 0    39   ~ 0
Copyright Brady O’Brien 2021\n\nThis source describes Open Hardware and is licensed under the CERN-OHL-W v2\n\nYou may redistribute and modify this documentation and make products using it under\nthe terms of the CERN-OHL-W v2 (https:/cern.ch/cern-ohl). This documentation is\ndistributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,\nSATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the\nCERN-OHL-W v2 for applicable conditions.\n\nSource location: https://github.com/baobrien/coin-thing
Wire Notes Line
	8150 5450 8150 6300
Wire Notes Line
	8150 6300 11000 6300
Wire Notes Line
	11000 6300 11000 5450
Wire Notes Line
	11000 5450 8150 5450
$EndSCHEMATC
