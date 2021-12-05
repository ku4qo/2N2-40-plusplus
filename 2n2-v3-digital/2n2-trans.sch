EESchema Schematic File Version 4
LIBS:2n2-trans-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 2
Title "2N2-40 Receiver"
Date "12/22/2019"
Rev "V01"
Comp "Mike M.  KU4QO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Diode:1N5817 D100
U 1 1 5E25A618
P 1450 4850
F 0 "D100" H 1450 5112 60  0000 C CNN
F 1 "1n5817" H 1450 5006 60  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 1650 5050 60  0001 L CNN
F 3 "" H 1650 5150 60  0001 L CNN
F 4 "" H 1650 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 1650 5350 60  0001 L CNN "MPN"
F 6 "" H 1650 5450 60  0001 L CNN "Category"
F 7 "" H 1650 5550 60  0001 L CNN "Family"
F 8 "" H 1650 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 1650 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 1650 5850 60  0001 L CNN "Description"
F 11 "" H 1650 5950 60  0001 L CNN "Manufacturer"
F 12 "" H 1650 6050 60  0001 L CNN "Status"
	1    1450 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C200
U 1 1 5E25CC91
P 2050 5000
F 0 "C200" H 2168 5046 50  0000 L CNN
F 1 "4.7uF" H 2168 4955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2088 4850 50  0001 C CNN
F 3 "~" H 2050 5000 50  0001 C CNN
	1    2050 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5E25E5AA
P 750 4850
F 0 "J2" H 642 5035 50  0000 C CNN
F 1 "Power out" H 642 4944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 750 4850 50  0001 C CNN
F 3 "~" H 750 4850 50  0001 C CNN
	1    750  4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E25E975
P 1100 5300
F 0 "#PWR03" H 1100 5050 50  0001 C CNN
F 1 "GND" H 1105 5127 50  0000 C CNN
F 2 "" H 1100 5300 50  0001 C CNN
F 3 "" H 1100 5300 50  0001 C CNN
	1    1100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4950 1100 4950
Wire Wire Line
	1100 4950 1100 5150
Wire Wire Line
	2050 5150 1100 5150
Connection ~ 1100 5150
Wire Wire Line
	1100 5150 1100 5300
$Comp
L power:+12V #PWR05
U 1 1 5E294F6F
P 5550 750
F 0 "#PWR05" H 5550 600 50  0001 C CNN
F 1 "+12V" H 5565 923 50  0000 C CNN
F 2 "" H 5550 750 50  0001 C CNN
F 3 "" H 5550 750 50  0001 C CNN
	1    5550 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4600 2050 4850
Connection ~ 2050 4850
$Comp
L Device:C C4
U 1 1 5E2A0D6C
P 2600 5000
F 0 "C4" H 2715 5046 50  0000 L CNN
F 1 "0.01uF" H 2715 4955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2638 4850 50  0001 C CNN
F 3 "~" H 2600 5000 50  0001 C CNN
	1    2600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5150 2050 5150
Connection ~ 2050 5150
Wire Wire Line
	2600 4850 2050 4850
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5E2F602E
P 6600 4350
F 0 "J6" H 6350 4500 50  0000 L CNN
F 1 "VFO" H 6500 4500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6600 4350 50  0001 C CNN
F 3 "~" H 6600 4350 50  0001 C CNN
	1    6600 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E302FBE
P 6800 4600
F 0 "#PWR027" H 6800 4350 50  0001 C CNN
F 1 "GND" H 6805 4427 50  0000 C CNN
F 2 "" H 6800 4600 50  0001 C CNN
F 3 "" H 6800 4600 50  0001 C CNN
	1    6800 4600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5E31006C
P 5950 5100
F 0 "J4" H 5842 5285 50  0000 C CNN
F 1 "LO" H 5842 5194 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5950 5100 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E3103D5
P 6150 5200
F 0 "#PWR018" H 6150 4950 50  0001 C CNN
F 1 "GND" H 6155 5027 50  0000 C CNN
F 2 "" H 6150 5200 50  0001 C CNN
F 3 "" H 6150 5200 50  0001 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4850 1200 4850
Wire Wire Line
	1600 4850 2050 4850
$Sheet
S 5200 7300 850  500 
U 5F479ABE
F0 "Sheet5F479ABD" 50
F1 "2n2-40-audio.sch" 50
$EndSheet
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5F230CB5
P 5650 2450
F 0 "A1" H 5650 1361 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5650 1270 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5800 1500 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5650 1450 50  0001 C CNN
	1    5650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5F2323E8
P 2450 2500
F 0 "SW1" H 2450 2867 50  0000 C CNN
F 1 "Tune" H 2450 2776 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2300 2660 50  0001 C CNN
F 3 "~" H 2450 2760 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1850 4750 1850
Wire Wire Line
	4750 1850 4750 1950
Wire Wire Line
	4150 1950 4500 1950
Wire Wire Line
	4500 1950 4500 1750
Wire Wire Line
	4500 1750 5000 1750
Wire Wire Line
	5000 1750 5000 1850
Wire Wire Line
	4150 2250 4450 2250
Wire Wire Line
	4450 2250 4450 2050
Wire Wire Line
	4150 2350 4500 2350
Wire Wire Line
	4500 2350 4500 2150
Wire Wire Line
	4150 2450 4550 2450
Wire Wire Line
	4150 2550 4600 2550
Wire Wire Line
	4600 2550 4600 2350
Wire Wire Line
	4150 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2450
Wire Wire Line
	4150 2750 4750 2750
Wire Wire Line
	4750 2750 4750 2550
Wire Wire Line
	4800 2850 4800 2650
Wire Wire Line
	4150 2950 4200 2950
Wire Wire Line
	4850 2950 4850 2750
Wire Wire Line
	4150 3050 4250 3050
Wire Wire Line
	4900 3050 4900 2850
Wire Wire Line
	4150 3150 4550 3150
Wire Wire Line
	4950 3150 4950 2950
Wire Wire Line
	5150 1850 5000 1850
Wire Wire Line
	4750 1950 5150 1950
Wire Wire Line
	4550 2250 5050 2250
Wire Wire Line
	4600 2350 4950 2350
Wire Wire Line
	4700 2450 4850 2450
Wire Wire Line
	4750 2550 4800 2550
Wire Wire Line
	4800 2650 5150 2650
Wire Wire Line
	4850 2750 5150 2750
Wire Wire Line
	4900 2850 5150 2850
Wire Wire Line
	4950 2950 5150 2950
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 5F24D73F
P 3950 2550
F 0 "J1" H 3842 3435 50  0000 C CNN
F 1 "Conn_01x15_Female" H 3842 3344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 3950 2550 50  0001 C CNN
F 3 "~" H 3950 2550 50  0001 C CNN
	1    3950 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J3
U 1 1 5F252171
P 7200 2450
F 0 "J3" H 7092 1525 50  0000 C CNN
F 1 "Conn_01x15_Female" H 7092 1616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 7200 2450 50  0001 C CNN
F 3 "~" H 7200 2450 50  0001 C CNN
	1    7200 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	4150 3250 4750 3250
Wire Wire Line
	5000 3250 5000 3050
Wire Wire Line
	5000 3050 5150 3050
Wire Wire Line
	5150 3150 5150 4000
Wire Wire Line
	5150 4000 5400 4000
Wire Wire Line
	7000 4000 7000 3150
Wire Wire Line
	7000 2950 6850 2950
Wire Wire Line
	6850 2950 6850 2250
Wire Wire Line
	6850 2250 6150 2250
Wire Wire Line
	7000 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2450
Wire Wire Line
	6800 2450 6300 2450
Wire Wire Line
	6750 2750 6750 2550
Wire Wire Line
	6750 2550 6450 2550
Wire Wire Line
	7000 2650 6150 2650
Wire Wire Line
	7000 2750 6750 2750
Wire Wire Line
	7000 2550 6900 2550
Wire Wire Line
	6900 2550 6900 2700
Wire Wire Line
	6900 2700 6200 2700
Wire Wire Line
	6200 2700 6200 2750
Wire Wire Line
	6200 2750 6150 2750
Wire Wire Line
	7000 2450 6950 2450
Wire Wire Line
	6950 2450 6950 2800
Wire Wire Line
	6950 2800 6350 2800
Wire Wire Line
	6350 2800 6350 2850
Wire Wire Line
	6350 2850 6250 2850
Wire Wire Line
	7000 2350 6700 2350
Wire Wire Line
	6700 2350 6700 2950
Wire Wire Line
	6700 2950 6250 2950
Wire Wire Line
	7000 2250 6950 2250
Wire Wire Line
	6950 2250 6950 2300
Wire Wire Line
	6950 2300 6650 2300
Wire Wire Line
	6650 2300 6650 3050
Wire Wire Line
	6650 3050 6150 3050
Wire Wire Line
	7000 2150 6600 2150
Wire Wire Line
	6600 2150 6600 3150
Wire Wire Line
	6600 3150 6150 3150
Wire Wire Line
	7000 2050 6700 2050
Wire Wire Line
	6700 2050 6700 1400
Wire Wire Line
	6700 1400 5850 1400
Wire Wire Line
	5850 1400 5850 1450
Wire Wire Line
	7000 1950 6650 1950
Wire Wire Line
	6650 1950 6650 1800
Wire Wire Line
	6650 1800 6150 1800
Wire Wire Line
	6150 1800 6150 1850
Wire Wire Line
	5750 3450 6400 3450
Wire Wire Line
	6550 3450 6550 1850
Wire Wire Line
	6550 1850 7000 1850
Wire Wire Line
	5550 1450 5550 1350
Wire Wire Line
	5550 1350 6800 1350
Wire Wire Line
	6800 1350 6800 1750
Wire Wire Line
	6800 1750 7000 1750
Wire Wire Line
	4150 2150 4350 2150
Wire Wire Line
	4350 2150 4350 3450
Wire Wire Line
	4350 3450 4700 3450
Wire Wire Line
	4150 2050 4300 2050
Wire Wire Line
	4300 2050 4300 1200
Wire Wire Line
	4300 1200 6300 1200
Wire Wire Line
	6300 1200 6300 1950
Wire Wire Line
	6300 1950 6150 1950
Wire Wire Line
	5750 1450 5750 1150
Wire Wire Line
	5750 1150 6500 1150
Wire Wire Line
	6500 1150 6500 3100
Wire Wire Line
	6500 3100 6750 3100
Wire Wire Line
	6900 3100 6900 3050
Wire Wire Line
	6900 3050 7000 3050
Wire Wire Line
	2050 2400 2150 2400
$Comp
L Device:R R1
U 1 1 5F29FCE9
P 1650 2000
F 0 "R1" H 1720 2046 50  0000 L CNN
F 1 "10k" H 1720 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1580 2000 50  0001 C CNN
F 3 "~" H 1650 2000 50  0001 C CNN
	1    1650 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F2A0E02
P 2050 2000
F 0 "R2" H 2120 2046 50  0000 L CNN
F 1 "10k" H 2120 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1980 2000 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1550 2050 1850
Wire Wire Line
	2050 2150 2050 2400
Wire Wire Line
	2150 2600 1650 2600
Wire Wire Line
	1650 2600 1650 2150
Wire Wire Line
	1650 1850 1650 1450
$Comp
L Device:C C1
U 1 1 5F2B11D9
P 1650 2750
F 0 "C1" H 1765 2796 50  0000 L CNN
F 1 "0.01uF" H 1765 2705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1688 2600 50  0001 C CNN
F 3 "~" H 1650 2750 50  0001 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F2B24F9
P 2050 3050
F 0 "C2" H 2165 3096 50  0000 L CNN
F 1 "0.01uF" H 2165 3005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2088 2900 50  0001 C CNN
F 3 "~" H 2050 3050 50  0001 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
Connection ~ 1650 2600
Wire Wire Line
	2050 2400 2050 2900
Connection ~ 2050 2400
Wire Wire Line
	2050 3200 1850 3200
Wire Wire Line
	1650 3200 1650 2900
$Comp
L power:GND #PWR0102
U 1 1 5F2CE8FA
P 1850 3200
F 0 "#PWR0102" H 1850 2950 50  0001 C CNN
F 1 "GND" H 1855 3027 50  0000 C CNN
F 2 "" H 1850 3200 50  0001 C CNN
F 3 "" H 1850 3200 50  0001 C CNN
	1    1850 3200
	-1   0    0    -1  
$EndComp
Connection ~ 1850 3200
Wire Wire Line
	1850 3200 1650 3200
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5F2CEEC4
P 6100 4550
F 0 "J5" H 6208 4831 50  0000 C CNN
F 1 "KEY" H 6208 4740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 4550 50  0001 C CNN
F 3 "~" H 6100 4550 50  0001 C CNN
	1    6100 4550
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:OLED-096 U1
U 1 1 5F129671
P 9050 3350
F 0 "U1" H 9328 3429 50  0000 L CNN
F 1 "OLED-096" H 9328 3338 50  0000 L CNN
F 2 "oled:oled096" H 9100 3450 50  0001 C CNN
F 3 "" H 9100 3450 50  0001 C CNN
	1    9050 3350
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:Nokia5110 U2
U 1 1 5F12A69D
P 9100 1550
F 0 "U2" H 9578 1588 50  0000 L CNN
F 1 "Nokia5110" H 9578 1497 50  0000 L CNN
F 2 "2n2-v3-digital:Nokia5110" H 9100 1550 50  0001 C CNN
F 3 "" H 9100 1550 50  0001 C CNN
	1    9100 1550
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:si5351-module U3
U 1 1 5F13E5EB
P 9250 4650
F 0 "U3" H 9478 4563 50  0000 L CNN
F 1 "si5351-module" H 9478 4472 50  0000 L CNN
F 2 "oled:si5351-module" H 9250 4650 50  0001 C CNN
F 3 "" H 9250 4650 50  0001 C CNN
	1    9250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F140DA8
P 6400 3450
F 0 "#PWR0101" H 6400 3200 50  0001 C CNN
F 1 "GND" H 6405 3277 50  0000 C CNN
F 2 "" H 6400 3450 50  0001 C CNN
F 3 "" H 6400 3450 50  0001 C CNN
	1    6400 3450
	-1   0    0    -1  
$EndComp
Connection ~ 6400 3450
Wire Wire Line
	6400 3450 6550 3450
$Comp
L power:GND #PWR0103
U 1 1 5F141303
P 4700 3450
F 0 "#PWR0103" H 4700 3200 50  0001 C CNN
F 1 "GND" H 4705 3277 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	-1   0    0    -1  
$EndComp
Connection ~ 4700 3450
Wire Wire Line
	4700 3450 5650 3450
$Comp
L power:GND #PWR0104
U 1 1 5F141558
P 9450 2000
F 0 "#PWR0104" H 9450 1750 50  0001 C CNN
F 1 "GND" H 9455 1827 50  0000 C CNN
F 2 "" H 9450 2000 50  0001 C CNN
F 3 "" H 9450 2000 50  0001 C CNN
	1    9450 2000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F141BD3
P 8450 3450
F 0 "#PWR0105" H 8450 3200 50  0001 C CNN
F 1 "GND" H 8455 3277 50  0000 C CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "" H 8450 3450 50  0001 C CNN
	1    8450 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F141F88
P 9250 5400
F 0 "#PWR0106" H 9250 5150 50  0001 C CNN
F 1 "GND" H 9255 5227 50  0000 C CNN
F 2 "" H 9250 5400 50  0001 C CNN
F 3 "" H 9250 5400 50  0001 C CNN
	1    9250 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 5050 9250 5400
Wire Wire Line
	8900 3050 8900 3000
Wire Wire Line
	8900 3000 8450 3000
Wire Wire Line
	8450 3000 8450 3400
Wire Wire Line
	9000 3050 9000 2750
Wire Wire Line
	9000 2500 9250 2500
Wire Wire Line
	9250 2500 9250 2000
Wire Wire Line
	6750 3100 6750 3500
Wire Wire Line
	6750 3500 7850 3500
Wire Wire Line
	7850 3500 7850 2500
Wire Wire Line
	7850 2500 9000 2500
Connection ~ 6750 3100
Wire Wire Line
	6750 3100 6900 3100
Connection ~ 9000 2500
Wire Wire Line
	9350 5050 9350 5150
Wire Wire Line
	9350 5150 9550 5150
Wire Wire Line
	9750 5150 9750 2500
Wire Wire Line
	9750 2500 9250 2500
Connection ~ 9250 2500
Wire Wire Line
	9150 5050 9150 5250
Wire Wire Line
	9150 5250 10000 5250
Wire Wire Line
	10000 5250 10000 2900
Wire Wire Line
	10000 2900 9200 2900
Wire Wire Line
	9200 2900 9200 3050
Wire Wire Line
	9100 3050 9100 2950
Wire Wire Line
	9100 2800 10150 2800
Wire Wire Line
	10150 2800 10150 5700
Wire Wire Line
	10150 5700 9050 5700
Wire Wire Line
	9050 5700 9050 5050
Wire Wire Line
	8750 5150 8750 5050
Wire Wire Line
	8850 5400 8850 5050
Text GLabel 7350 5900 0    50   Input ~ 0
clk2
Wire Wire Line
	8950 5050 8950 5850
Text GLabel 3450 4100 0    50   Input ~ 0
cw
Wire Wire Line
	2750 2600 2750 2900
Wire Wire Line
	2750 3250 2050 3250
Wire Wire Line
	2050 3250 2050 3200
Connection ~ 2050 3200
Wire Wire Line
	2750 2900 2100 2900
Wire Wire Line
	2100 2900 2100 2500
Wire Wire Line
	2100 2500 2150 2500
Connection ~ 2750 2900
Wire Wire Line
	2750 2900 2750 3250
$Comp
L Device:R R3
U 1 1 5F14C094
P 8150 950
F 0 "R3" H 8000 1000 50  0000 L CNN
F 1 "10k" H 7950 900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 950 50  0001 C CNN
F 3 "~" H 8150 950 50  0001 C CNN
	1    8150 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F14C8A7
P 8150 1250
F 0 "R4" H 8220 1296 50  0000 L CNN
F 1 "1k" H 8220 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 1250 50  0001 C CNN
F 3 "~" H 8150 1250 50  0001 C CNN
	1    8150 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F14CA82
P 8150 1550
F 0 "R5" H 8220 1596 50  0000 L CNN
F 1 "10k" H 8220 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 1550 50  0001 C CNN
F 3 "~" H 8150 1550 50  0001 C CNN
	1    8150 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F14CC96
P 8150 1850
F 0 "R6" H 8000 1900 50  0000 L CNN
F 1 "10k" H 7950 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 1850 50  0001 C CNN
F 3 "~" H 8150 1850 50  0001 C CNN
	1    8150 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F14CF22
P 8150 2150
F 0 "R7" H 8220 2196 50  0000 L CNN
F 1 "10k" H 8220 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 2150 50  0001 C CNN
F 3 "~" H 8150 2150 50  0001 C CNN
	1    8150 2150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5F14D169
P 10250 2050
F 0 "J7" H 10142 2235 50  0000 C CNN
F 1 "backlight" H 10200 2150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10250 2050 50  0001 C CNN
F 3 "~" H 10250 2050 50  0001 C CNN
	1    10250 2050
	1    0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5F14DE9B
P 9900 1950
F 0 "R8" V 9800 1900 50  0000 L CNN
F 1 "330" V 9700 1900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 9830 1950 50  0001 C CNN
F 3 "~" H 9900 1950 50  0001 C CNN
	1    9900 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 2050 10000 2050
Wire Wire Line
	9350 2000 9350 2350
Wire Wire Line
	9350 2350 9600 2350
Wire Wire Line
	9600 2350 9600 1950
Wire Wire Line
	9600 1950 9750 1950
Wire Wire Line
	9150 2000 9150 2400
Wire Wire Line
	9150 2400 8300 2400
Wire Wire Line
	8300 2400 8300 2150
Wire Wire Line
	5100 2150 5100 1050
Wire Wire Line
	5100 1050 7300 1050
Wire Wire Line
	7300 1050 7300 2150
Wire Wire Line
	7300 2150 8000 2150
Connection ~ 5100 2150
Wire Wire Line
	5100 2150 5150 2150
Wire Wire Line
	9050 2000 9050 2300
Wire Wire Line
	9050 2300 8350 2300
Wire Wire Line
	8350 2300 8350 1850
Wire Wire Line
	8350 1850 8300 1850
Wire Wire Line
	5050 2250 5050 1000
Wire Wire Line
	5050 1000 7350 1000
Wire Wire Line
	7350 1000 7350 1850
Wire Wire Line
	7350 1850 8000 1850
Connection ~ 5050 2250
Wire Wire Line
	5050 2250 5150 2250
Wire Wire Line
	8950 2000 8950 2250
Wire Wire Line
	8950 2250 8400 2250
Wire Wire Line
	8400 2250 8400 1550
Wire Wire Line
	8400 1550 8300 1550
Wire Wire Line
	4950 2350 4950 950 
Wire Wire Line
	4950 950  7400 950 
Wire Wire Line
	7400 950  7400 1600
Wire Wire Line
	7400 1600 8000 1600
Wire Wire Line
	8000 1600 8000 1550
Connection ~ 4950 2350
Wire Wire Line
	4950 2350 5150 2350
Wire Wire Line
	8850 2000 8850 2200
Wire Wire Line
	8850 2200 8450 2200
Wire Wire Line
	8450 2200 8450 1250
Wire Wire Line
	8450 1250 8300 1250
Wire Wire Line
	8000 1250 7450 1250
Wire Wire Line
	7450 1250 7450 900 
Wire Wire Line
	7450 900  4800 900 
Wire Wire Line
	4800 900  4800 2550
Connection ~ 4800 2550
Wire Wire Line
	4800 2550 5150 2550
Wire Wire Line
	8750 2000 8750 2150
Wire Wire Line
	8750 2150 8550 2150
Wire Wire Line
	8550 2150 8550 950 
Wire Wire Line
	8550 950  8300 950 
Wire Wire Line
	4850 2450 4850 850 
Wire Wire Line
	4850 850  7500 850 
Wire Wire Line
	7500 850  7500 950 
Wire Wire Line
	7500 950  8000 950 
Connection ~ 4850 2450
Wire Wire Line
	4850 2450 5150 2450
$Comp
L power:+5V #PWR0109
U 1 1 5F1EAFD5
P 5850 750
F 0 "#PWR0109" H 5850 600 50  0001 C CNN
F 1 "+5V" H 5865 923 50  0000 C CNN
F 2 "" H 5850 750 50  0001 C CNN
F 3 "" H 5850 750 50  0001 C CNN
	1    5850 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 750  5850 1400
Connection ~ 5850 1400
Wire Wire Line
	5550 750  5550 1350
Connection ~ 5550 1350
Wire Wire Line
	4450 2050 5150 2050
Wire Wire Line
	4150 2850 4200 2850
Wire Wire Line
	2050 1550 4200 1550
Wire Wire Line
	4200 1550 4200 2850
Connection ~ 4200 2850
Wire Wire Line
	4200 2850 4800 2850
Wire Wire Line
	4500 2150 5100 2150
Wire Wire Line
	1650 1450 3550 1450
Wire Wire Line
	3550 1450 3550 3500
Wire Wire Line
	3550 3500 4200 3500
Wire Wire Line
	4200 3500 4200 2950
Connection ~ 4200 2950
Wire Wire Line
	4200 2950 4850 2950
Wire Wire Line
	4550 2250 4550 2450
Wire Wire Line
	2750 2400 3450 2400
Wire Wire Line
	3450 2400 3450 3650
Wire Wire Line
	3450 3650 4250 3650
Wire Wire Line
	4250 3650 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4250 3050 4900 3050
Wire Wire Line
	4450 2250 4450 4100
Wire Wire Line
	4450 4100 3450 4100
Connection ~ 4450 2250
$Comp
L Switch:SW_SPST SW2
U 1 1 5F26993C
P 4050 4850
F 0 "SW2" V 4004 4948 50  0000 L CNN
F 1 "DOWN" V 4095 4948 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4050 4850 50  0001 C CNN
F 3 "~" H 4050 4850 50  0001 C CNN
	1    4050 4850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5F269BDD
P 4750 4850
F 0 "SW3" V 4704 4948 50  0000 L CNN
F 1 "UP" V 4795 4948 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4750 4850 50  0001 C CNN
F 3 "~" H 4750 4850 50  0001 C CNN
	1    4750 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F269F6C
P 4050 5350
F 0 "#PWR0110" H 4050 5100 50  0001 C CNN
F 1 "GND" H 4055 5177 50  0000 C CNN
F 2 "" H 4050 5350 50  0001 C CNN
F 3 "" H 4050 5350 50  0001 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5350 4050 5200
Wire Wire Line
	4750 5050 4750 5200
Wire Wire Line
	4750 5200 4050 5200
Connection ~ 4050 5200
Wire Wire Line
	4050 5200 4050 5050
Wire Wire Line
	4550 3150 4550 4500
Wire Wire Line
	4550 4500 4050 4500
Wire Wire Line
	4050 4500 4050 4650
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 4950 3150
Wire Wire Line
	4750 4650 4750 3250
Connection ~ 4750 3250
Wire Wire Line
	4750 3250 5000 3250
$Comp
L power:+5V #PWR0108
U 1 1 5F2B0543
P 9800 2300
F 0 "#PWR0108" H 9800 2150 50  0001 C CNN
F 1 "+5V" H 9815 2473 50  0000 C CNN
F 2 "" H 9800 2300 50  0001 C CNN
F 3 "" H 9800 2300 50  0001 C CNN
	1    9800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2300 9800 2300
Wire Wire Line
	10000 2050 10000 2300
Wire Wire Line
	6250 2850 6250 2900
Wire Wire Line
	6250 2900 9200 2900
Connection ~ 6250 2850
Wire Wire Line
	6250 2850 6150 2850
Connection ~ 9200 2900
Wire Wire Line
	6250 2950 6250 3000
Wire Wire Line
	6250 3000 8300 3000
Wire Wire Line
	8300 3000 8300 2950
Wire Wire Line
	8300 2950 9100 2950
Connection ~ 6250 2950
Wire Wire Line
	6250 2950 6150 2950
Connection ~ 9100 2950
Wire Wire Line
	9100 2950 9100 2800
$Comp
L 74xx:74HC00 U4
U 1 1 5F2EBB07
P 8250 4350
F 0 "U4" H 8250 4033 50  0000 C CNN
F 1 "74HC00" H 8250 4124 50  0000 C CNN
F 2 "" H 8250 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 8250 4350 50  0001 C CNN
	1    8250 4350
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC00 U4
U 2 1 5F2ED401
P 8150 5250
F 0 "U4" H 8150 4933 50  0000 C CNN
F 1 "74HC00" H 8150 5024 50  0000 C CNN
F 2 "" H 8150 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 8150 5250 50  0001 C CNN
	2    8150 5250
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC00 U4
U 3 1 5F2EEA7B
P 8150 5900
F 0 "U4" H 8150 5583 50  0000 C CNN
F 1 "74HC00" H 8150 5674 50  0000 C CNN
F 2 "" H 8150 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 8150 5900 50  0001 C CNN
	3    8150 5900
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC00 U4
U 4 1 5F2EF5F7
P 6050 6350
F 0 "U4" H 6050 6675 50  0000 C CNN
F 1 "74HC00" H 6050 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 6050 6350 50  0001 C CNN
	4    6050 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U4
U 5 1 5F2F1865
P 4850 6350
F 0 "U4" H 5080 6396 50  0000 L CNN
F 1 "74HC00" H 5080 6305 50  0000 L CNN
F 2 "" H 4850 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 4850 6350 50  0001 C CNN
	5    4850 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5F2F2723
P 4850 5800
F 0 "#PWR0111" H 4850 5650 50  0001 C CNN
F 1 "+5V" H 4865 5973 50  0000 C CNN
F 2 "" H 4850 5800 50  0001 C CNN
F 3 "" H 4850 5800 50  0001 C CNN
	1    4850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F2F2DE2
P 4850 6900
F 0 "#PWR0112" H 4850 6650 50  0001 C CNN
F 1 "GND" H 4855 6727 50  0000 C CNN
F 2 "" H 4850 6900 50  0001 C CNN
F 3 "" H 4850 6900 50  0001 C CNN
	1    4850 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 5800 4850 5850
Wire Wire Line
	4850 6850 4850 6900
$Comp
L Device:C C3
U 1 1 5F316DA0
P 3950 6400
F 0 "C3" H 4065 6446 50  0000 L CNN
F 1 "0.1uF" H 4065 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3988 6250 50  0001 C CNN
F 3 "~" H 3950 6400 50  0001 C CNN
	1    3950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6250 3950 5850
Wire Wire Line
	3950 5850 4850 5850
Connection ~ 4850 5850
Wire Wire Line
	3950 6900 4850 6900
Wire Wire Line
	3950 6550 3950 6900
Connection ~ 4850 6900
$Comp
L Device:C C6
U 1 1 5F33F241
P 9550 5450
F 0 "C6" H 9665 5496 50  0000 L CNN
F 1 "0.1uF" H 9665 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9588 5300 50  0001 C CNN
F 3 "~" H 9550 5450 50  0001 C CNN
	1    9550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5300 9550 5150
Connection ~ 9550 5150
Wire Wire Line
	9550 5150 9750 5150
Wire Wire Line
	9550 5600 9350 5600
Wire Wire Line
	9350 5600 9350 5400
Wire Wire Line
	9350 5400 9250 5400
Connection ~ 9250 5400
$Comp
L Device:C C5
U 1 1 5F365EA6
P 8600 3250
F 0 "C5" H 8650 3100 50  0000 L CNN
F 1 "0.1uF" H 8550 3000 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8638 3100 50  0001 C CNN
F 3 "~" H 8600 3250 50  0001 C CNN
	1    8600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3400 8450 3400
Connection ~ 8450 3400
Wire Wire Line
	8450 3400 8450 3450
Wire Wire Line
	8600 3100 8600 2750
Wire Wire Line
	8600 2750 9000 2750
Connection ~ 9000 2750
Wire Wire Line
	9000 2750 9000 2500
Wire Wire Line
	8550 4250 8550 4450
Wire Wire Line
	8450 5400 8450 5350
Wire Wire Line
	8450 5150 8450 5350
Connection ~ 8450 5350
Wire Wire Line
	8450 5850 8450 5800
Wire Wire Line
	8450 5850 8950 5850
Wire Wire Line
	8450 6000 8450 5850
Connection ~ 8450 5850
$Comp
L power:GND #PWR0113
U 1 1 5F45E05B
P 5600 6750
F 0 "#PWR0113" H 5600 6500 50  0001 C CNN
F 1 "GND" H 5605 6577 50  0000 C CNN
F 2 "" H 5600 6750 50  0001 C CNN
F 3 "" H 5600 6750 50  0001 C CNN
	1    5600 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 6250 5600 6250
Wire Wire Line
	5600 6250 5600 6450
Wire Wire Line
	5750 6450 5600 6450
Connection ~ 5600 6450
Wire Wire Line
	5600 6450 5600 6750
Wire Wire Line
	6300 2450 6300 4450
Connection ~ 6300 2450
Wire Wire Line
	6300 2450 6150 2450
Wire Wire Line
	6450 2550 6450 4650
Wire Wire Line
	6450 4650 6300 4650
Connection ~ 6450 2550
Wire Wire Line
	6450 2550 6150 2550
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5F509571
P 750 4400
F 0 "J8" H 642 4585 50  0000 C CNN
F 1 "Power In" H 642 4494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 750 4400 50  0001 C CNN
F 3 "~" H 750 4400 50  0001 C CNN
	1    750  4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	950  4500 1100 4500
Wire Wire Line
	1100 4500 1100 4950
Connection ~ 1100 4950
Wire Wire Line
	950  4400 1200 4400
Wire Wire Line
	1200 4400 1200 4850
Connection ~ 1200 4850
Wire Wire Line
	1200 4850 1300 4850
$Comp
L power:+12V #PWR0114
U 1 1 5F53800F
P 2050 4600
F 0 "#PWR0114" H 2050 4450 50  0001 C CNN
F 1 "+12V" H 2065 4773 50  0000 C CNN
F 2 "" H 2050 4600 50  0001 C CNN
F 3 "" H 2050 4600 50  0001 C CNN
	1    2050 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F5E1D3F
P 7100 5400
F 0 "R11" H 7170 5446 50  0000 L CNN
F 1 "100" H 7170 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7030 5400 50  0001 C CNN
F 3 "~" H 7100 5400 50  0001 C CNN
	1    7100 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F5E23F9
P 6600 5400
F 0 "R9" H 6670 5446 50  0000 L CNN
F 1 "100" H 6670 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6530 5400 50  0001 C CNN
F 3 "~" H 6600 5400 50  0001 C CNN
	1    6600 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F613159
P 6850 5250
F 0 "R10" H 6920 5296 50  0000 L CNN
F 1 "82" H 6920 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6780 5250 50  0001 C CNN
F 3 "~" H 6850 5250 50  0001 C CNN
	1    6850 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 5250 7100 5250
Connection ~ 7100 5250
Wire Wire Line
	6700 5250 6600 5250
Wire Wire Line
	6600 5100 6600 5250
Wire Wire Line
	6150 5100 6600 5100
Connection ~ 6600 5250
Wire Wire Line
	7100 5550 6600 5550
Wire Wire Line
	6600 5550 6300 5550
Wire Wire Line
	6300 5550 6300 5200
Wire Wire Line
	6300 5200 6150 5200
Connection ~ 6600 5550
Connection ~ 6150 5200
Wire Wire Line
	6800 4450 6800 4550
$Comp
L Device:R R14
U 1 1 5F6BB699
P 7500 4500
F 0 "R14" H 7570 4546 50  0000 L CNN
F 1 "100" H 7570 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7430 4500 50  0001 C CNN
F 3 "~" H 7500 4500 50  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F6BBA10
P 7000 4500
F 0 "R12" H 7070 4546 50  0000 L CNN
F 1 "100" H 7070 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6930 4500 50  0001 C CNN
F 3 "~" H 7000 4500 50  0001 C CNN
	1    7000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F6BBF4A
P 7250 4350
F 0 "R13" H 7320 4396 50  0000 L CNN
F 1 "82" H 7320 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7180 4350 50  0001 C CNN
F 3 "~" H 7250 4350 50  0001 C CNN
	1    7250 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4350 7500 4350
Wire Wire Line
	7400 4350 7500 4350
Connection ~ 7500 4350
Wire Wire Line
	7100 4350 7000 4350
Wire Wire Line
	6800 4350 7000 4350
Connection ~ 7000 4350
Wire Wire Line
	7500 4650 7000 4650
Wire Wire Line
	7000 4650 6900 4650
Wire Wire Line
	6900 4650 6900 4450
Wire Wire Line
	6900 4450 6800 4450
Connection ~ 7000 4650
Connection ~ 6800 4450
Text Notes 6950 4750 0    50   ~ 0
Optional VFO attenuator
Text Notes 6500 5650 0    50   ~ 0
Optional LO attenuator
$Comp
L Switch:SW_SPST SW4
U 1 1 5F77580F
P 5400 4400
F 0 "SW4" V 5354 4498 50  0000 L CNN
F 1 "Enter" V 5445 4498 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5400 4400 50  0001 C CNN
F 3 "~" H 5400 4400 50  0001 C CNN
	1    5400 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4200 5400 4000
Connection ~ 5400 4000
Wire Wire Line
	5400 4000 7000 4000
Wire Wire Line
	5400 4600 5400 5200
Wire Wire Line
	5400 5200 4750 5200
Connection ~ 4750 5200
$Comp
L Device:C C9
U 1 1 5F7F818F
P 7800 4350
F 0 "C9" V 7650 4300 50  0000 L CNN
F 1 "0.1uF" V 7550 4250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7838 4200 50  0001 C CNN
F 3 "~" H 7800 4350 50  0001 C CNN
	1    7800 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5150 8550 5150
Wire Wire Line
	8550 5150 8550 4450
Connection ~ 8550 4450
Wire Wire Line
	8450 5400 8850 5400
$Comp
L Device:C C8
U 1 1 5F84949F
P 7650 5250
F 0 "C8" V 7500 5200 50  0000 L CNN
F 1 "0.1uF" V 7400 5200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7688 5100 50  0001 C CNN
F 3 "~" H 7650 5250 50  0001 C CNN
	1    7650 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5250 7800 5250
Wire Wire Line
	7100 5250 7500 5250
$Comp
L Device:C C7
U 1 1 5F87E5F5
P 7600 5900
F 0 "C7" V 7450 5850 50  0000 L CNN
F 1 "0.1uF" V 7350 5850 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7638 5750 50  0001 C CNN
F 3 "~" H 7600 5900 50  0001 C CNN
	1    7600 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5900 7750 5900
Wire Wire Line
	7450 5900 7350 5900
Text GLabel 7450 2650 2    50   Input ~ 0
S_tone
Wire Wire Line
	7450 2650 7400 2650
Wire Wire Line
	7400 2650 7400 2600
Wire Wire Line
	7400 2600 7000 2600
Wire Wire Line
	7000 2600 7000 2650
Connection ~ 7000 2650
Text GLabel 900  7150 0    50   Input ~ 0
S_tone
$Comp
L Device:R R15
U 1 1 5F95BD42
P 1250 7150
F 0 "R15" H 1320 7196 50  0000 L CNN
F 1 "1k" H 1320 7105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1180 7150 50  0001 C CNN
F 3 "~" H 1250 7150 50  0001 C CNN
	1    1250 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F95C425
P 1750 7150
F 0 "R16" H 1820 7196 50  0000 L CNN
F 1 "1k" H 1820 7105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1680 7150 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F95CA12
P 2250 7150
F 0 "R17" H 2320 7196 50  0000 L CNN
F 1 "1k" H 2320 7105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2180 7150 50  0001 C CNN
F 3 "~" H 2250 7150 50  0001 C CNN
	1    2250 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F95CE0D
P 2800 7150
F 0 "R18" H 2870 7196 50  0000 L CNN
F 1 "1k" H 2870 7105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2730 7150 50  0001 C CNN
F 3 "~" H 2800 7150 50  0001 C CNN
	1    2800 7150
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5F95CEF7
P 1450 7550
F 0 "C10" H 1565 7596 50  0000 L CNN
F 1 "0.1uF" H 1565 7505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1488 7400 50  0001 C CNN
F 3 "~" H 1450 7550 50  0001 C CNN
	1    1450 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F95D2C0
P 2000 7550
F 0 "C11" H 2115 7596 50  0000 L CNN
F 1 "0.1uF" H 2115 7505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2038 7400 50  0001 C CNN
F 3 "~" H 2000 7550 50  0001 C CNN
	1    2000 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F95D670
P 2500 7550
F 0 "C12" H 2615 7596 50  0000 L CNN
F 1 "0.1uF" H 2615 7505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2538 7400 50  0001 C CNN
F 3 "~" H 2500 7550 50  0001 C CNN
	1    2500 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F95DB4C
P 3050 7550
F 0 "C13" H 3165 7596 50  0000 L CNN
F 1 "0.1uF" H 3165 7505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3088 7400 50  0001 C CNN
F 3 "~" H 3050 7550 50  0001 C CNN
	1    3050 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F95DFD4
P 4300 7350
F 0 "C14" H 4415 7396 50  0000 L CNN
F 1 "0.1uF" H 4415 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4338 7200 50  0001 C CNN
F 3 "~" H 4300 7350 50  0001 C CNN
	1    4300 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	900  7150 1100 7150
Wire Wire Line
	1400 7150 1450 7150
Wire Wire Line
	1900 7150 2000 7150
Wire Wire Line
	2400 7150 2500 7150
Wire Wire Line
	2950 7150 3050 7150
Wire Wire Line
	1450 7400 1450 7150
Connection ~ 1450 7150
Wire Wire Line
	1450 7150 1600 7150
Wire Wire Line
	2000 7400 2000 7150
Connection ~ 2000 7150
Wire Wire Line
	2000 7150 2100 7150
Wire Wire Line
	2500 7400 2500 7150
Connection ~ 2500 7150
Wire Wire Line
	2500 7150 2650 7150
Wire Wire Line
	3050 7400 3050 7150
Connection ~ 3050 7150
Wire Wire Line
	3050 7700 3050 7800
Wire Wire Line
	3050 7800 2500 7800
Wire Wire Line
	1450 7800 1450 7700
Wire Wire Line
	2000 7700 2000 7800
Connection ~ 2000 7800
Wire Wire Line
	2000 7800 1450 7800
Wire Wire Line
	2500 7700 2500 7800
Connection ~ 2500 7800
Wire Wire Line
	2500 7800 2250 7800
$Comp
L power:GND #PWR0115
U 1 1 5FAB8623
P 2250 7800
F 0 "#PWR0115" H 2250 7550 50  0001 C CNN
F 1 "GND" H 2255 7627 50  0000 C CNN
F 2 "" H 2250 7800 50  0001 C CNN
F 3 "" H 2250 7800 50  0001 C CNN
	1    2250 7800
	-1   0    0    -1  
$EndComp
Connection ~ 2250 7800
Wire Wire Line
	2250 7800 2000 7800
$Comp
L Device:R_POT RV1
U 1 1 5FADCAA6
P 3500 7350
F 0 "RV1" H 3431 7396 50  0000 R CNN
F 1 "R_POT" H 3431 7305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-10-H01_Horizontal" H 3500 7350 50  0001 C CNN
F 3 "~" H 3500 7350 50  0001 C CNN
	1    3500 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7150 3500 7200
Wire Wire Line
	3050 7150 3500 7150
Wire Wire Line
	3500 7500 3500 7800
Wire Wire Line
	3500 7800 3050 7800
Connection ~ 3050 7800
$Comp
L Device:R R19
U 1 1 5FB1DD65
P 3900 7350
F 0 "R19" H 3970 7396 50  0000 L CNN
F 1 "10k" H 3970 7305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 3830 7350 50  0001 C CNN
F 3 "~" H 3900 7350 50  0001 C CNN
	1    3900 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 7350 3750 7350
Wire Wire Line
	4050 7350 4150 7350
Text GLabel 4650 7350 2    50   Input ~ 0
tone
Wire Wire Line
	4450 7350 4650 7350
$Comp
L Connector:Conn_01x02_Female J10
U 1 1 5FB83C5E
P 4700 7700
F 0 "J10" H 4592 7885 50  0000 C CNN
F 1 "tone" H 4650 7800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 7700 50  0001 C CNN
F 3 "~" H 4700 7700 50  0001 C CNN
	1    4700 7700
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 7600 4450 7600
Wire Wire Line
	4450 7600 4450 7350
Connection ~ 4450 7350
Wire Wire Line
	4500 7700 4500 7800
Wire Wire Line
	4500 7800 3500 7800
Connection ~ 3500 7800
Wire Wire Line
	6300 4550 6800 4550
Connection ~ 6800 4550
Wire Wire Line
	6800 4550 6800 4600
$EndSCHEMATC
