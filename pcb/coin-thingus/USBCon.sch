EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L coin-trunker-rescue:STM32F042F6Px-MCU_ST_STM32F0 U7
U 1 1 5FE0C064
P 4650 2800
F 0 "U7" H 4950 3600 50  0000 C CNN
F 1 "STM32F042F6Px" H 5000 3500 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4150 2100 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L coin-trunker-rescue:USB_B_Micro-Connector J7
U 1 1 5FE0CA19
P 7850 2800
F 0 "J7" H 7620 2789 50  0000 R CNN
F 1 "USB_B_Micro" H 7620 2698 50  0000 R CNN
F 2 "coin-trunker:USB_Micro-B_Molex-105017-0001" H 8000 2750 50  0001 C CNN
F 3 "~" H 8000 2750 50  0001 C CNN
F 4 "U254-051T-4BH23-S2B" H 7850 2800 50  0001 C CNN "Part"
	1    7850 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 3100 6500 2900
Wire Wire Line
	6500 2900 7550 2900
Wire Wire Line
	5250 3200 6400 3200
Wire Wire Line
	6400 3200 6400 2800
Wire Wire Line
	6400 2800 7550 2800
$Comp
L Device:C C8
U 1 1 5FAE8F38
P 1050 1350
F 0 "C8" H 1165 1396 50  0000 L CNN
F 1 "1uF" H 1165 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 1200 50  0001 C CNN
F 3 "~" H 1050 1350 50  0001 C CNN
	1    1050 1350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-3302_SOT23 U6
U 1 1 5FAE9B0E
P 1850 1100
F 0 "U6" H 1850 1342 50  0000 C CNN
F 1 "MCP1703A-3302_SOT23" H 1850 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 1850 1050 50  0001 C CNN
F 4 "SC662K-3.3V" H 1850 1100 50  0001 C CNN "Part Alt"
	1    1850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FAEA945
P 2500 1350
F 0 "C9" H 2615 1396 50  0000 L CNN
F 1 "1uF" H 2615 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2538 1200 50  0001 C CNN
F 3 "~" H 2500 1350 50  0001 C CNN
	1    2500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1200 1050 1100
Wire Wire Line
	1050 1100 1550 1100
Wire Wire Line
	2150 1100 2500 1100
Wire Wire Line
	2500 1100 2500 1200
Wire Wire Line
	1050 1500 1050 1600
Wire Wire Line
	1050 1600 1850 1600
Wire Wire Line
	2500 1600 2500 1500
Wire Wire Line
	1850 1400 1850 1600
Connection ~ 1850 1600
Wire Wire Line
	1850 1600 2500 1600
$Comp
L power:GND #PWR0121
U 1 1 5FAEB806
P 1050 1700
F 0 "#PWR0121" H 1050 1450 50  0001 C CNN
F 1 "GND" H 1055 1527 50  0000 C CNN
F 2 "" H 1050 1700 50  0001 C CNN
F 3 "" H 1050 1700 50  0001 C CNN
	1    1050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1700 1050 1600
Connection ~ 1050 1600
$Comp
L power:GND #PWR0122
U 1 1 5FAEBD6B
P 2500 1700
F 0 "#PWR0122" H 2500 1450 50  0001 C CNN
F 1 "GND" H 2505 1527 50  0000 C CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "" H 2500 1700 50  0001 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1700 2500 1600
Connection ~ 2500 1600
$Comp
L Device:C C10
U 1 1 5FAEC7BC
P 5300 4300
F 0 "C10" H 5415 4346 50  0000 L CNN
F 1 ".1uF" H 5415 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5338 4150 50  0001 C CNN
F 3 "~" H 5300 4300 50  0001 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
Text Label 2500 1100 2    50   ~ 0
3V3M
Text Label 1050 1100 0    50   ~ 0
VBUS
Wire Wire Line
	3250 1800 3500 1800
Wire Wire Line
	3500 1800 3500 1850
Text Label 3250 1800 0    50   ~ 0
3V3M
$Comp
L power:GND #PWR0123
U 1 1 5FAED96D
P 5300 4550
F 0 "#PWR0123" H 5300 4300 50  0001 C CNN
F 1 "GND" H 5305 4377 50  0000 C CNN
F 2 "" H 5300 4550 50  0001 C CNN
F 3 "" H 5300 4550 50  0001 C CNN
	1    5300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4550 5300 4450
$Comp
L power:GND #PWR0124
U 1 1 5FAEDDD2
P 4450 3850
F 0 "#PWR0124" H 4450 3600 50  0001 C CNN
F 1 "GND" H 4455 3677 50  0000 C CNN
F 2 "" H 4450 3850 50  0001 C CNN
F 3 "" H 4450 3850 50  0001 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3600 4450 3850
$Comp
L power:GND #PWR0125
U 1 1 5FAFFB57
P 4550 1500
F 0 "#PWR0125" H 4550 1250 50  0001 C CNN
F 1 "GND" H 4555 1327 50  0000 C CNN
F 2 "" H 4550 1500 50  0001 C CNN
F 3 "" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1450 4550 1450
Wire Wire Line
	4550 1450 4550 1500
Wire Wire Line
	4550 2100 4550 1950
Wire Wire Line
	4550 1950 4450 1950
Wire Wire Line
	4450 1950 4450 2100
Wire Wire Line
	4450 1950 4050 1950
Connection ~ 4450 1950
Text Label 4050 1950 0    50   ~ 0
3V3M
Wire Wire Line
	4350 1350 4700 1350
Wire Wire Line
	4700 1250 4350 1250
Wire Wire Line
	4700 1150 4350 1150
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5FB02B89
P 4150 1250
F 0 "J6" H 4068 1667 50  0000 C CNN
F 1 "Conn_01x05" H 4068 1576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4150 1250 50  0001 C CNN
F 3 "~" H 4150 1250 50  0001 C CNN
	1    4150 1250
	-1   0    0    -1  
$EndComp
Text Label 4700 1350 2    50   ~ 0
3V3M
Text Label 4700 1250 2    50   ~ 0
NRST
Text Label 4700 1150 2    50   ~ 0
SWDIO
Text Label 4700 1050 2    50   ~ 0
SWCLK
Wire Wire Line
	4700 1050 4350 1050
Wire Wire Line
	5650 3300 5250 3300
Wire Wire Line
	5650 3400 5250 3400
Text Label 5650 3400 2    50   ~ 0
SWDIO
Text Label 5650 3300 2    50   ~ 0
SWCLK
$Comp
L Device:R_US R18
U 1 1 5FB0910A
P 3500 3700
F 0 "R18" H 3568 3746 50  0000 L CNN
F 1 "10k" H 3568 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3540 3690 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
	1    3500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3550
Text Label 3500 3400 0    50   ~ 0
BOOT0
$Comp
L power:GND #PWR0126
U 1 1 5FB0C28A
P 3500 4000
F 0 "#PWR0126" H 3500 3750 50  0001 C CNN
F 1 "GND" H 3505 3827 50  0000 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4000 3500 3850
Text Label 3750 2300 0    50   ~ 0
NRST
$Comp
L Device:R_US R17
U 1 1 5FB12B0A
P 3500 2000
F 0 "R17" H 3568 2046 50  0000 L CNN
F 1 "10k" H 3568 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3540 1990 50  0001 C CNN
F 3 "~" H 3500 2000 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2300 3500 2150
Wire Wire Line
	3500 2300 4050 2300
Text Label 7250 2600 0    50   ~ 0
VBUS
Wire Wire Line
	7250 2600 7550 2600
$Comp
L power:GND #PWR0127
U 1 1 5FB178BF
P 7300 3400
F 0 "#PWR0127" H 7300 3150 50  0001 C CNN
F 1 "GND" H 7305 3227 50  0000 C CNN
F 2 "" H 7300 3400 50  0001 C CNN
F 3 "" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3000 7300 3000
Wire Wire Line
	7300 3000 7300 3250
Wire Wire Line
	7850 3200 7850 3250
Wire Wire Line
	7850 3250 7300 3250
Connection ~ 7300 3250
Wire Wire Line
	7300 3250 7300 3400
Wire Wire Line
	5300 4150 5300 4000
Wire Wire Line
	5300 4000 5550 4000
Text Label 5550 4000 2    50   ~ 0
3V3M
$Comp
L Device:C C11
U 1 1 5FB1A39D
P 7950 3500
F 0 "C11" H 8065 3546 50  0000 L CNN
F 1 ".1uF" H 8065 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7988 3350 50  0001 C CNN
F 3 "~" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3200 7950 3350
$Comp
L power:GND #PWR0128
U 1 1 5FB1B9D3
P 7950 3800
F 0 "#PWR0128" H 7950 3550 50  0001 C CNN
F 1 "GND" H 7955 3627 50  0000 C CNN
F 2 "" H 7950 3800 50  0001 C CNN
F 3 "" H 7950 3800 50  0001 C CNN
	1    7950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3800 7950 3650
Text HLabel 7250 2600 0    50   Input ~ 0
VUSBUS
Text HLabel 7200 3250 0    50   Input ~ 0
GND
Wire Wire Line
	7200 3250 7300 3250
Text HLabel 2650 1100 2    50   Input ~ 0
3V3USB
Wire Wire Line
	2650 1100 2500 1100
Connection ~ 2500 1100
NoConn ~ 5250 3000
NoConn ~ 4050 3300
Text HLabel 1150 2500 0    50   BiDi ~ 0
SDA
Text HLabel 1150 3100 0    50   BiDi ~ 0
SCL
NoConn ~ 5250 2400
NoConn ~ 5250 2500
NoConn ~ 5250 2600
NoConn ~ 5250 2700
NoConn ~ 5250 2800
NoConn ~ 5250 2900
Connection ~ 3500 3400
Text Label 6550 2900 0    50   ~ 0
USB_N
Text Label 6550 2800 0    50   ~ 0
USB_P
Text Notes 8350 6350 0    39   ~ 0
Copyright Brady O’Brien 2021\n\nThis source describes Open Hardware and is licensed under the CERN-OHL-W v2\n\nYou may redistribute and modify this documentation and make products using it under\nthe terms of the CERN-OHL-W v2 (https:/cern.ch/cern-ohl). This documentation is\ndistributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,\nSATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the\nCERN-OHL-W v2 for applicable conditions.\n\nSource location: https://github.com/baobrien/coin-thing
Wire Notes Line
	8300 5600 8300 6450
Wire Notes Line
	8300 6450 11150 6450
Wire Notes Line
	11150 6450 11150 5600
Wire Notes Line
	11150 5600 8300 5600
$Comp
L Switch:SW_SPST SW1
U 1 1 6034D695
P 3000 3400
F 0 "SW1" H 3000 3635 50  0000 C CNN
F 1 "TS-1187A-C-E-B" H 3000 3544 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 3000 3400 50  0001 C CNN
F 3 "~" H 3000 3400 50  0001 C CNN
F 4 "TS-1187A-C-E-B" H 3000 3400 50  0001 C CNN "Part"
	1    3000 3400
	1    0    0    -1  
$EndComp
Text Label 2450 3400 0    50   ~ 0
3V3M
Wire Wire Line
	2450 3400 2800 3400
Wire Wire Line
	3200 3400 3500 3400
Text Notes 2900 3600 0    50   ~ 0
DFU\nBoot
Text Notes 3550 1200 0    50   ~ 0
SWD Header
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 60427585
P 1750 2400
AR Path="/60427585" Ref="Q?"  Part="1" 
AR Path="/5FDC9904/60427585" Ref="Q2"  Part="1" 
F 0 "Q2" V 1750 2150 50  0000 L CNN
F 1 "BSS123L" V 1650 1950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 1750 2400 50  0001 L CNN
	1    1750 2400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2400 3000 2400 2500
Wire Wire Line
	2400 2500 1950 2500
Wire Wire Line
	2400 3000 2750 3000
Wire Wire Line
	1150 2500 1550 2500
Text Label 2100 2050 2    50   ~ 0
3V3M
Wire Wire Line
	2100 2050 1750 2050
Wire Wire Line
	1750 2050 1750 2200
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 60436D03
P 1750 3000
AR Path="/60436D03" Ref="Q?"  Part="1" 
AR Path="/5FDC9904/60436D03" Ref="Q3"  Part="1" 
F 0 "Q3" V 1750 2750 50  0000 L CNN
F 1 "BSS123L" V 1650 2550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 1750 3000 50  0001 L CNN
	1    1750 3000
	0    -1   1    0   
$EndComp
Text Notes 1200 3500 0    50   ~ 0
I2C 'Level Converters' \nto isolate MCU from RPI\n
Wire Wire Line
	1950 3100 3100 3100
Wire Wire Line
	1150 3100 1550 3100
Wire Wire Line
	1750 2800 1750 2700
Wire Wire Line
	1750 2700 1450 2700
Wire Wire Line
	1450 2700 1450 2050
Wire Wire Line
	1450 2050 1750 2050
Connection ~ 1750 2050
$Comp
L Device:D_TVS_x2_AAC D13
U 1 1 6051E49B
P 6000 2350
F 0 "D13" H 6000 2567 50  0000 C CNN
F 1 "D_TVS_x2_AAC" H 6000 2476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5850 2350 50  0001 C CNN
F 3 "~" H 5850 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 60520E3D
P 6000 2750
F 0 "#PWR0130" H 6000 2500 50  0001 C CNN
F 1 "GND" H 6005 2577 50  0000 C CNN
F 2 "" H 6000 2750 50  0001 C CNN
F 3 "" H 6000 2750 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3100 5600 3100
Wire Wire Line
	6350 2350 6400 2350
Wire Wire Line
	6400 2350 6400 2800
Connection ~ 6400 2800
Wire Wire Line
	5650 2350 5600 2350
Wire Wire Line
	5600 2350 5600 3100
Connection ~ 5600 3100
Wire Wire Line
	5600 3100 6500 3100
Wire Wire Line
	6000 2500 6000 2750
$Comp
L Device:LED D?
U 1 1 6052FA5C
P 6150 1600
AR Path="/6052FA5C" Ref="D?"  Part="1" 
AR Path="/5FDC9904/6052FA5C" Ref="D14"  Part="1" 
F 0 "D14" H 6150 1450 50  0000 C CNN
F 1 "LED" H 6000 1450 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6150 1600 50  0001 C CNN
F 3 "~" H 6150 1600 50  0001 C CNN
	1    6150 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 6052FA62
P 5750 1600
AR Path="/6052FA62" Ref="R?"  Part="1" 
AR Path="/5FDC9904/6052FA62" Ref="R26"  Part="1" 
F 0 "R26" V 5650 1550 50  0000 R CNN
F 1 "470" V 5650 1750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5790 1590 50  0001 C CNN
F 3 "~" H 5750 1600 50  0001 C CNN
	1    5750 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1600 6000 1600
Wire Wire Line
	5250 2300 5450 2300
Wire Wire Line
	5450 2300 5450 1600
Wire Wire Line
	5450 1600 5600 1600
Wire Wire Line
	6300 1600 6450 1600
Wire Wire Line
	6450 1600 6450 1800
$Comp
L power:GND #PWR0131
U 1 1 60534C96
P 6450 1800
F 0 "#PWR0131" H 6450 1550 50  0001 C CNN
F 1 "GND" H 6455 1627 50  0000 C CNN
F 2 "" H 6450 1800 50  0001 C CNN
F 3 "" H 6450 1800 50  0001 C CNN
	1    6450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R29
U 1 1 60525D10
P 2750 2650
F 0 "R29" H 2818 2696 50  0000 L CNN
F 1 "10k" H 2818 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2790 2640 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 605261A3
P 3100 2650
F 0 "R30" H 3168 2696 50  0000 L CNN
F 1 "10k" H 3168 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3140 2640 50  0001 C CNN
F 3 "~" H 3100 2650 50  0001 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2800 2750 3000
Connection ~ 2750 3000
Wire Wire Line
	2750 3000 4050 3000
Wire Wire Line
	3100 2800 3100 3100
Connection ~ 3100 3100
Wire Wire Line
	3100 3100 4050 3100
Text Label 3000 2400 2    50   ~ 0
3V3M
Wire Wire Line
	2750 2400 3100 2400
Wire Wire Line
	3100 2400 3100 2500
Wire Wire Line
	2750 2400 2750 2500
$EndSCHEMATC
