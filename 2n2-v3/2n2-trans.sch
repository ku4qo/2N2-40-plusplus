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
L Device:C_Variable TC9
U 1 1 5DF77F3E
P 900 800
F 0 "TC9" V 648 800 50  0000 C CNN
F 1 "70pf" V 739 800 50  0000 C CNN
F 2 "custom:tcap" H 900 800 50  0001 C CNN
F 3 "~" H 900 800 50  0001 C CNN
	1    900  800 
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D27
U 1 1 5DF78B88
P 1150 950
F 0 "D27" V 1150 700 50  0000 L CNN
F 1 "1N4148W" V 1250 550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 1150 775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1150 950 50  0001 C CNN
	1    1150 950 
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D28
U 1 1 5DF791CB
P 1400 950
F 0 "D28" V 1446 870 50  0000 R CNN
F 1 "1N4148W" V 1355 870 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 1400 775 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1400 950 50  0001 C CNN
	1    1400 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L11
U 1 1 5DF79EA3
P 1750 800
F 0 "L11" V 1569 800 50  0000 C CNN
F 1 "12uH" V 1660 800 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P5.08mm_Vertical_Fastron_MICC" H 1750 800 50  0001 C CNN
F 3 "~" H 1750 800 50  0001 C CNN
	1    1750 800 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DF7A51E
P 1650 1100
F 0 "#PWR04" H 1650 850 50  0001 C CNN
F 1 "GND" H 1655 927 50  0000 C CNN
F 2 "" H 1650 1100 50  0001 C CNN
F 3 "" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 800  1150 800 
Wire Wire Line
	1150 800  1400 800 
Connection ~ 1150 800 
Wire Wire Line
	1400 800  1600 800 
Connection ~ 1400 800 
Wire Wire Line
	1400 1100 1150 1100
$Comp
L Device:R_POT POT1
U 1 1 5DF7B78B
P 2000 950
F 0 "POT1" H 2100 1300 50  0000 R CNN
F 1 "1k" H 2050 1200 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 950 50  0001 C CNN
F 3 "~" H 2000 950 50  0001 C CNN
	1    2000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 800  2000 800 
Wire Wire Line
	2000 1100 1650 1100
Connection ~ 1400 1100
$Comp
L Device:Transformer_1P_1S T1
U 1 1 5DF7C68F
P 2650 1000
F 0 "T1" H 2650 1381 50  0000 C CNN
F 1 "3tp-30ts-T37-2" H 2650 1290 50  0000 C CNN
F 2 "custom:ToroidTrans" H 2650 1000 50  0001 C CNN
F 3 "~" H 2650 1000 50  0001 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 950  2250 950 
Wire Wire Line
	2250 950  2250 800 
Wire Wire Line
	2250 1200 2000 1200
Wire Wire Line
	2000 1200 2000 1100
Connection ~ 2000 1100
$Comp
L Device:C C1
U 1 1 5DF7ED3D
P 3200 1000
F 0 "C1" H 3315 1046 50  0000 L CNN
F 1 "100pF" H 3315 955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3238 850 50  0001 C CNN
F 3 "~" H 3200 1000 50  0001 C CNN
	1    3200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Variable TC1
U 1 1 5DF7F524
P 3550 1000
F 0 "TC1" H 3665 1046 50  0000 L CNN
F 1 "70pF" H 3665 955 50  0000 L CNN
F 2 "custom:tcap" H 3550 1000 50  0001 C CNN
F 3 "~" H 3550 1000 50  0001 C CNN
	1    3550 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DF7F784
P 3900 850
F 0 "C3" V 3648 850 50  0000 C CNN
F 1 "3pF" V 3739 850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3938 700 50  0001 C CNN
F 3 "~" H 3900 850 50  0001 C CNN
	1    3900 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C_Variable TC2
U 1 1 5DF80226
P 4200 1000
F 0 "TC2" H 4315 1046 50  0000 L CNN
F 1 "70pF" H 4315 955 50  0000 L CNN
F 2 "custom:tcap" H 4200 1000 50  0001 C CNN
F 3 "~" H 4200 1000 50  0001 C CNN
	1    4200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DF8097B
P 4550 1000
F 0 "C2" H 4665 1046 50  0000 L CNN
F 1 "100pF" H 4665 955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4588 850 50  0001 C CNN
F 3 "~" H 4550 1000 50  0001 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 800  3200 800 
Wire Wire Line
	3200 800  3200 850 
Wire Wire Line
	3200 850  3550 850 
Connection ~ 3200 850 
Wire Wire Line
	3550 850  3750 850 
Connection ~ 3550 850 
Wire Wire Line
	4050 850  4200 850 
Wire Wire Line
	4200 850  4550 850 
Connection ~ 4200 850 
Wire Wire Line
	4550 1150 4200 1150
Wire Wire Line
	4200 1150 3550 1150
Connection ~ 4200 1150
Wire Wire Line
	3550 1150 3200 1150
Connection ~ 3550 1150
Wire Wire Line
	3200 1150 3200 1200
Wire Wire Line
	3200 1200 3050 1200
Connection ~ 3200 1150
$Comp
L Device:Transformer_1P_1S T2
U 1 1 5DF82E91
P 5350 950
F 0 "T2" H 5350 1331 50  0000 C CNN
F 1 "30tp-3ts-T37-2" H 5350 1240 50  0000 C CNN
F 2 "custom:ToroidTrans" H 5350 950 50  0001 C CNN
F 3 "~" H 5350 950 50  0001 C CNN
	1    5350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1150 4550 1150
Connection ~ 4550 1150
Wire Wire Line
	4950 750  4550 750 
Wire Wire Line
	4550 750  4550 850 
Connection ~ 4550 850 
$Comp
L power:GND #PWR015
U 1 1 5DF852B4
P 5750 1250
F 0 "#PWR015" H 5750 1000 50  0001 C CNN
F 1 "GND" H 5755 1077 50  0000 C CNN
F 2 "" H 5750 1250 50  0001 C CNN
F 3 "" H 5750 1250 50  0001 C CNN
	1    5750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1150 5750 1250
$Comp
L Device:C C17
U 1 1 5DF85B26
P 6000 950
F 0 "C17" V 5748 950 50  0000 C CNN
F 1 "0.01uF" V 5839 950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6038 800 50  0001 C CNN
F 3 "~" H 6000 950 50  0001 C CNN
	1    6000 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 750  5750 950 
Wire Wire Line
	5750 950  5850 950 
$Comp
L power:GND #PWR016
U 1 1 5DF9024E
P 6200 2750
F 0 "#PWR016" H 6200 2500 50  0001 C CNN
F 1 "GND" H 6205 2577 50  0000 C CNN
F 2 "" H 6200 2750 50  0001 C CNN
F 3 "" H 6200 2750 50  0001 C CNN
	1    6200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Transformer_1P_2S T3
U 1 1 5DF9D28B
P 8600 1350
F 0 "T3" H 8600 1931 50  0000 C CNN
F 1 "10T Trifilar/FT37-43" H 8600 1840 50  0000 C CNN
F 2 "custom:ToroidTri" H 8600 1350 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5DF9DFCC
P 8200 1650
F 0 "#PWR023" H 8200 1400 50  0001 C CNN
F 1 "GND" H 8205 1477 50  0000 C CNN
F 2 "" H 8200 1650 50  0001 C CNN
F 3 "" H 8200 1650 50  0001 C CNN
	1    8200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1550 8200 1650
$Comp
L power:GND #PWR025
U 1 1 5DFA0343
P 9200 1350
F 0 "#PWR025" H 9200 1100 50  0001 C CNN
F 1 "GND" H 9205 1177 50  0000 C CNN
F 2 "" H 9200 1350 50  0001 C CNN
F 3 "" H 9200 1350 50  0001 C CNN
	1    9200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1250 9200 1250
Wire Wire Line
	9200 1250 9200 1350
Wire Wire Line
	9000 1450 9000 1250
Connection ~ 9000 1250
$Comp
L Diode:BAT54S D200
U 1 1 5DFA2F10
P 9550 950
F 0 "D200" H 9350 850 50  0000 C CNN
F 1 "BAT54S" H 9700 850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9625 1075 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 9430 950 50  0001 C CNN
	1    9550 950 
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54S D201
U 1 1 5DFA33A5
P 9550 1750
F 0 "D201" H 9650 1500 50  0000 C CNN
F 1 "BAT54S" H 9700 1600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9625 1875 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 9430 1750 50  0001 C CNN
	1    9550 1750
	1    0    0    1   
$EndComp
$Comp
L Device:Transformer_1P_2S T4
U 1 1 5DFA76E6
P 10000 2800
F 0 "T4" H 10550 3000 50  0000 L CNN
F 1 "10T Trifilar/FT37-43" H 10250 3100 50  0000 L CNN
F 2 "custom:ToroidTri" H 10000 2800 50  0001 C CNN
F 3 "~" H 10000 2800 50  0001 C CNN
	1    10000 2800
	0    1    -1   0   
$EndComp
Wire Wire Line
	9850 950  10050 950 
Wire Wire Line
	10050 2150 9600 2150
Wire Wire Line
	10200 500  9250 500 
Wire Wire Line
	9850 1750 9850 1100
Wire Wire Line
	9850 1100 10200 1100
$Comp
L power:GND #PWR028
U 1 1 5DFB11B8
P 10200 3200
F 0 "#PWR028" H 10200 2950 50  0001 C CNN
F 1 "GND" H 10205 3027 50  0000 C CNN
F 2 "" H 10200 3200 50  0001 C CNN
F 3 "" H 10200 3200 50  0001 C CNN
	1    10200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1550 9000 1550
Wire Wire Line
	9000 1550 9000 1750
Wire Wire Line
	9550 1150 9000 1150
Wire Wire Line
	9000 1150 9000 950 
Text GLabel 10000 2250 0    50   Input ~ 0
C
Text GLabel 650  2700 0    50   Input ~ 0
C
$Comp
L Device:L L5
U 1 1 5DFB9D7C
P 900 2950
F 0 "L5" H 952 2996 50  0000 L CNN
F 1 "100uH" H 952 2905 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P5.08mm_Vertical_Fastron_MICC" H 900 2950 50  0001 C CNN
F 3 "~" H 900 2950 50  0001 C CNN
	1    900  2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5DFBA3B4
P 1200 2700
F 0 "R21" V 1407 2700 50  0000 C CNN
F 1 "27" V 1316 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1130 2700 50  0001 C CNN
F 3 "~" H 1200 2700 50  0001 C CNN
	1    1200 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	650  2700 900  2700
Wire Wire Line
	900  2700 900  2800
Wire Wire Line
	1050 2700 900  2700
Connection ~ 900  2700
$Comp
L power:GND #PWR02
U 1 1 5DFC1C90
P 900 3150
F 0 "#PWR02" H 900 2900 50  0001 C CNN
F 1 "GND" H 905 2977 50  0000 C CNN
F 2 "" H 900 3150 50  0001 C CNN
F 3 "" H 900 3150 50  0001 C CNN
	1    900  3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3150 900  3100
Wire Wire Line
	1350 2700 1550 2700
$Comp
L power:GND #PWR01
U 1 1 5DFC62BF
P 900 2350
F 0 "#PWR01" H 900 2100 50  0001 C CNN
F 1 "GND" H 905 2177 50  0000 C CNN
F 2 "" H 900 2350 50  0001 C CNN
F 3 "" H 900 2350 50  0001 C CNN
	1    900  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2300 900  2300
Wire Wire Line
	900  2300 900  2350
$Comp
L Device:C C24
U 1 1 5DFC88CC
P 1350 1850
F 0 "C24" V 1350 2150 50  0000 C CNN
F 1 "0.2uF" V 1450 2150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 1388 1700 50  0001 C CNN
F 3 "~" H 1350 1850 50  0001 C CNN
	1    1350 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2300 1750 2300
Wire Wire Line
	1750 2300 1750 2400
$Comp
L Device:R R22
U 1 1 5DFD09FD
P 2050 2300
F 0 "R22" V 2150 2300 50  0000 C CNN
F 1 "2.7k" V 1950 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1980 2300 50  0001 C CNN
F 3 "~" H 2050 2300 50  0001 C CNN
	1    2050 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 2300 1750 2300
Connection ~ 1750 2300
Wire Wire Line
	2200 2300 2350 2300
Wire Wire Line
	2350 2300 2350 2350
Wire Wire Line
	2350 2650 2350 2700
Wire Wire Line
	2350 2700 1950 2700
$Comp
L power:+12V #PWR06
U 1 1 5DFD90D4
P 2350 2200
F 0 "#PWR06" H 2350 2050 50  0001 C CNN
F 1 "+12V" H 2365 2373 50  0000 C CNN
F 2 "" H 2350 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0001 C CNN
	1    2350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2200 2350 2300
Connection ~ 2350 2300
$Comp
L Device:C C34
U 1 1 5DFDCB0F
P 2800 3500
F 0 "C34" V 2548 3500 50  0000 C CNN
F 1 "270pF" V 2639 3500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 2838 3350 50  0001 C CNN
F 3 "~" H 2800 3500 50  0001 C CNN
	1    2800 3500
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 5DFDD66C
P 3800 3500
F 0 "Y2" H 3800 3768 50  0000 C CNN
F 1 "4.915MHz" H 3800 3677 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 3800 3500 50  0001 C CNN
F 3 "~" H 3800 3500 50  0001 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y3
U 1 1 5DFDD784
P 4300 3500
F 0 "Y3" H 4300 3768 50  0000 C CNN
F 1 "4.915MHz" H 4300 3677 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4300 3500 50  0001 C CNN
F 3 "~" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y4
U 1 1 5DFDDBCC
P 4800 3500
F 0 "Y4" H 4800 3768 50  0000 C CNN
F 1 "4.915MHz" H 4800 3677 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4800 3500 50  0001 C CNN
F 3 "~" H 4800 3500 50  0001 C CNN
	1    4800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E0061C3
P 4050 4200
F 0 "#PWR09" H 4050 3950 50  0001 C CNN
F 1 "GND" H 4055 4027 50  0000 C CNN
F 2 "" H 4050 4200 50  0001 C CNN
F 3 "" H 4050 4200 50  0001 C CNN
	1    4050 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5E00A2EA
P 5100 3500
F 0 "C22" V 4848 3500 50  0000 C CNN
F 1 "270pF" V 4939 3500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 5138 3350 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	0    1    1    0   
$EndComp
$Comp
L Device:Transformer_1P_1S T7
U 1 1 5E036E31
P 5650 3700
F 0 "T7" H 5650 4081 50  0000 C CNN
F 1 "15tp-2ts-TF37-43" H 5650 3990 50  0000 C CNN
F 2 "custom:ToroidTrans" H 5650 3700 50  0001 C CNN
F 3 "~" H 5650 3700 50  0001 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3900 5150 3900
Wire Wire Line
	5150 3900 5150 4050
Wire Wire Line
	5150 4050 5650 4050
Wire Wire Line
	6150 4050 6150 3900
Wire Wire Line
	6150 3900 6050 3900
$Comp
L power:GND #PWR014
U 1 1 5E042AC0
P 5650 4150
F 0 "#PWR014" H 5650 3900 50  0001 C CNN
F 1 "GND" H 5655 3977 50  0000 C CNN
F 2 "" H 5650 4150 50  0001 C CNN
F 3 "" H 5650 4150 50  0001 C CNN
	1    5650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4150 5650 4050
Connection ~ 5650 4050
Wire Wire Line
	5650 4050 6150 4050
$Comp
L Device:R R36
U 1 1 5E055915
P 6450 3500
F 0 "R36" V 6550 3500 50  0000 C CNN
F 1 "47" V 6650 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6380 3500 50  0001 C CNN
F 3 "~" H 6450 3500 50  0001 C CNN
	1    6450 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C38
U 1 1 5E055DB7
P 6450 3200
F 0 "C38" V 6198 3200 50  0000 C CNN
F 1 "0.2uF" V 6289 3200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6488 3050 50  0001 C CNN
F 3 "~" H 6450 3200 50  0001 C CNN
	1    6450 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3500 6300 3500
Wire Wire Line
	6300 3200 6300 3500
Connection ~ 6300 3500
Wire Wire Line
	6600 3200 6600 3500
Wire Wire Line
	6600 3500 6850 3500
Wire Wire Line
	6850 3500 6850 3850
Wire Wire Line
	6850 3850 6950 3850
Connection ~ 6600 3500
$Comp
L Device:C C18
U 1 1 5E06F13A
P 7050 3150
F 0 "C18" V 6798 3150 50  0000 C CNN
F 1 "0.2uF" V 6889 3150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7088 3000 50  0001 C CNN
F 3 "~" H 7050 3150 50  0001 C CNN
	1    7050 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E06F7B0
P 7050 3350
F 0 "R14" V 7150 3350 50  0000 C CNN
F 1 "4.7k" V 7250 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6980 3350 50  0001 C CNN
F 3 "~" H 7050 3350 50  0001 C CNN
	1    7050 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3550 7200 3550
Wire Wire Line
	7200 3550 7200 3350
Wire Wire Line
	7200 3350 7200 3250
Connection ~ 7200 3350
Wire Wire Line
	6900 3350 6900 3150
$Comp
L power:GND #PWR017
U 1 1 5E0829CD
P 6750 3200
F 0 "#PWR017" H 6750 2950 50  0001 C CNN
F 1 "GND" H 6755 3027 50  0000 C CNN
F 2 "" H 6750 3200 50  0001 C CNN
F 3 "" H 6750 3200 50  0001 C CNN
	1    6750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3150 6750 3150
Wire Wire Line
	6750 3150 6750 3200
Connection ~ 6900 3150
$Comp
L Device:Transformer_1P_1S T8
U 1 1 5E08940F
P 8600 3100
F 0 "T8" V 8554 3344 50  0000 L CNN
F 1 "10T Bifilar/FT37-43" V 8645 3344 50  0000 L CNN
F 2 "custom:ToroidTrans" H 8600 3100 50  0001 C CNN
F 3 "~" H 8600 3100 50  0001 C CNN
	1    8600 3100
	0    1    1    0   
$EndComp
$Comp
L Device:Transformer_1P_2S T9
U 1 1 5E08C103
P 9850 5850
F 0 "T9" H 9850 6431 50  0000 C CNN
F 1 "10T Trifilar/FT37-43" H 9850 6340 50  0000 C CNN
F 2 "custom:ToroidTri" H 9850 5850 50  0001 C CNN
F 3 "~" H 9850 5850 50  0001 C CNN
	1    9850 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR026
U 1 1 5E08D7DA
P 9300 2450
F 0 "#PWR026" H 9300 2300 50  0001 C CNN
F 1 "+12V" H 9315 2623 50  0000 C CNN
F 2 "" H 9300 2450 50  0001 C CNN
F 3 "" H 9300 2450 50  0001 C CNN
	1    9300 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5E08DD39
P 9050 2500
F 0 "R34" V 8843 2500 50  0000 C CNN
F 1 "33" V 8934 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8980 2500 50  0001 C CNN
F 3 "~" H 9050 2500 50  0001 C CNN
	1    9050 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2500 8800 2500
Wire Wire Line
	8800 2500 8800 2700
$Comp
L Device:R R23
U 1 1 5E09B968
P 7500 3250
F 0 "R23" V 7293 3250 50  0000 C CNN
F 1 "47k" V 7384 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7430 3250 50  0001 C CNN
F 3 "~" H 7500 3250 50  0001 C CNN
	1    7500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3250 7200 3250
Connection ~ 7200 3250
Wire Wire Line
	7200 3250 7200 3150
$Comp
L Device:R R24
U 1 1 5E0A2CC0
P 7750 3500
F 0 "R24" H 7820 3546 50  0000 L CNN
F 1 "1k" H 7820 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7680 3500 50  0001 C CNN
F 3 "~" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3250 7750 3250
Wire Wire Line
	7750 3250 7750 3350
Wire Wire Line
	7350 3850 7750 3850
Wire Wire Line
	7800 3850 7800 4000
Wire Wire Line
	7800 4000 8500 4000
Wire Wire Line
	7750 3650 7750 3850
Connection ~ 7750 3850
Wire Wire Line
	7750 3850 7800 3850
Wire Wire Line
	8800 2500 8150 2500
Wire Wire Line
	7950 2500 7950 3250
Wire Wire Line
	7950 3250 7750 3250
Connection ~ 8800 2500
Connection ~ 7750 3250
$Comp
L Device:C C20
U 1 1 5E0C0BB9
P 8150 2650
F 0 "C20" H 8350 2800 50  0000 R CNN
F 1 "0.2uF" H 8150 2750 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 8188 2500 50  0001 C CNN
F 3 "~" H 8150 2650 50  0001 C CNN
	1    8150 2650
	-1   0    0    1   
$EndComp
Connection ~ 8150 2500
Wire Wire Line
	8150 2500 7950 2500
$Comp
L power:GND #PWR022
U 1 1 5E0C11EF
P 8150 2800
F 0 "#PWR022" H 8150 2550 50  0001 C CNN
F 1 "GND" H 8155 2627 50  0000 C CNN
F 2 "" H 8150 2800 50  0001 C CNN
F 3 "" H 8150 2800 50  0001 C CNN
	1    8150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3500 8400 3700
Wire Wire Line
	8400 3700 9150 3700
Wire Wire Line
	8800 3500 8800 3800
$Comp
L power:GND #PWR021
U 1 1 5E0DAFCE
P 10250 6050
F 0 "#PWR021" H 10250 5800 50  0001 C CNN
F 1 "GND" H 10255 5877 50  0000 C CNN
F 2 "" H 10250 6050 50  0001 C CNN
F 3 "" H 10250 6050 50  0001 C CNN
	1    10250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5E0E3987
P 8150 4450
F 0 "R25" H 8220 4496 50  0000 L CNN
F 1 "680" H 8220 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8080 4450 50  0001 C CNN
F 3 "~" H 8150 4450 50  0001 C CNN
	1    8150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5E0E4024
P 7800 4450
F 0 "C25" H 8150 4350 50  0000 R CNN
F 1 "680pF" H 8150 4500 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7838 4300 50  0001 C CNN
F 3 "~" H 7800 4450 50  0001 C CNN
	1    7800 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 4300 7950 4300
Wire Wire Line
	7800 4600 7950 4600
$Comp
L power:GND #PWR024
U 1 1 5E0FDC7C
P 7950 4600
F 0 "#PWR024" H 7950 4350 50  0001 C CNN
F 1 "GND" H 7955 4427 50  0000 C CNN
F 2 "" H 7950 4600 50  0001 C CNN
F 3 "" H 7950 4600 50  0001 C CNN
	1    7950 4600
	1    0    0    -1  
$EndComp
Connection ~ 7950 4600
Wire Wire Line
	7950 4600 8150 4600
$Comp
L Diode:BAT54S D202
U 1 1 5E0FE111
P 8650 5250
F 0 "D202" V 8604 5338 50  0000 L CNN
F 1 "BAT54S" V 8695 5338 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8725 5375 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 8530 5250 50  0001 C CNN
	1    8650 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 2400 10000 2400
Wire Wire Line
	10200 500  10200 800 
Wire Wire Line
	10000 2250 10000 2400
Connection ~ 10000 2400
Wire Wire Line
	10000 2400 10100 2400
Wire Wire Line
	9600 2400 9600 2150
Connection ~ 9600 2150
Wire Wire Line
	9600 2150 9250 2150
Wire Wire Line
	10400 2400 10400 800 
Wire Wire Line
	10400 800  10200 800 
Connection ~ 10200 800 
Wire Wire Line
	10200 800  10200 1100
Connection ~ 1650 1100
Wire Wire Line
	1650 1100 1400 1100
$Comp
L power:GND #PWR08
U 1 1 5E2435C5
P 3200 1200
F 0 "#PWR08" H 3200 950 50  0001 C CNN
F 1 "GND" H 3205 1027 50  0000 C CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
Connection ~ 3200 1200
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
F 1 "Power" H 642 4944 50  0000 C CNN
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
P 2050 4600
F 0 "#PWR05" H 2050 4450 50  0001 C CNN
F 1 "+12V" H 2065 4773 50  0000 C CNN
F 2 "" H 2050 4600 50  0001 C CNN
F 3 "" H 2050 4600 50  0001 C CNN
	1    2050 4600
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
P 10400 3800
F 0 "J6" H 10150 3950 50  0000 L CNN
F 1 "VFO" H 10300 3950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10400 3800 50  0001 C CNN
F 3 "~" H 10400 3800 50  0001 C CNN
	1    10400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E302FBE
P 10200 4050
F 0 "#PWR027" H 10200 3800 50  0001 C CNN
F 1 "GND" H 10205 3877 50  0000 C CNN
F 2 "" H 10200 4050 50  0001 C CNN
F 3 "" H 10200 4050 50  0001 C CNN
	1    10200 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5E31006C
P 10450 5650
F 0 "J4" H 10342 5835 50  0000 C CNN
F 1 "LO" H 10342 5744 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10450 5650 50  0001 C CNN
F 3 "~" H 10450 5650 50  0001 C CNN
	1    10450 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E3103D5
P 10250 5750
F 0 "#PWR018" H 10250 5500 50  0001 C CNN
F 1 "GND" H 10255 5577 50  0000 C CNN
F 2 "" H 10250 5750 50  0001 C CNN
F 3 "" H 10250 5750 50  0001 C CNN
	1    10250 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 2500 9300 2500
Wire Wire Line
	9300 2500 9300 2450
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q4
U 1 1 5E48FFDA
P 6600 1850
F 0 "Q4" V 6500 2000 60  0000 L CNN
F 1 "2N2222A" V 6850 1600 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6800 2050 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 6800 2150 60  0001 L CNN
F 4 "2N2222ACS-ND" H 6800 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 6800 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6800 2450 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 6800 2550 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 6800 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 6800 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 6800 2850 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 6800 2950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6800 3050 60  0001 L CNN "Status"
	1    6600 1850
	0    1    -1   0   
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q7
U 1 1 5E497BDF
P 8700 4000
F 0 "Q7" H 8888 4053 60  0000 L CNN
F 1 "2N2222A" H 8888 3947 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8900 4200 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 8900 4300 60  0001 L CNN
F 4 "2N2222ACS-ND" H 8900 4400 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 8900 4500 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8900 4600 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 8900 4700 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 8900 4800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 8900 4900 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 8900 5000 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 8900 5100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 5200 60  0001 L CNN "Status"
	1    8700 4000
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q6
U 1 1 5E4998D6
P 7150 3750
F 0 "Q6" V 7391 3750 60  0000 C CNN
F 1 "2N2222A" V 7497 3750 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7350 3950 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 7350 4050 60  0001 L CNN
F 4 "2N2222ACS-ND" H 7350 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 7350 4250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7350 4350 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7350 4450 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 7350 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 7350 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 7350 4750 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 7350 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7350 4950 60  0001 L CNN "Status"
	1    7150 3750
	0    1    1    0   
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q5
U 1 1 5E49A9C6
P 1750 2600
F 0 "Q5" V 1991 2600 60  0000 C CNN
F 1 "2N2222A" V 2097 2600 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1950 2800 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 1950 2900 60  0001 L CNN
F 4 "2N2222ACS-ND" H 1950 3000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 1950 3100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1950 3200 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1950 3300 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 1950 3400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 1950 3500 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 1950 3600 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 1950 3700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1950 3800 60  0001 L CNN "Status"
	1    1750 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 950  10050 2150
$Comp
L Device:LED D8
U 1 1 5E5941C3
P 7100 2450
F 0 "D8" V 7139 2333 50  0000 R CNN
F 1 "LED" V 7048 2333 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7100 2450 50  0001 C CNN
F 3 "~" H 7100 2450 50  0001 C CNN
	1    7100 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:Transformer_1P_2S T6
U 1 1 5E5A0B6A
P 6800 1150
F 0 "T6" H 6800 1731 50  0000 C CNN
F 1 "1:4:11 ft37-43" H 6800 1640 50  0000 C CNN
F 2 "custom:ToroidTri" H 6800 1150 50  0001 C CNN
F 3 "~" H 6800 1150 50  0001 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 950  6200 950 
Wire Wire Line
	6200 950  6200 1350
Wire Wire Line
	6200 1350 6400 1350
Wire Wire Line
	6400 950  6300 950 
Wire Wire Line
	6300 950  6300 1750
Wire Wire Line
	6300 1750 6400 1750
Wire Wire Line
	6800 1750 7300 1750
Wire Wire Line
	7300 1750 7300 1550
Wire Wire Line
	7300 1550 7200 1550
Wire Wire Line
	7200 1050 7300 1050
Wire Wire Line
	7300 1250 7200 1250
$Comp
L Device:L L2
U 1 1 5E5DE6B5
P 6200 2050
F 0 "L2" V 6019 2050 50  0000 C CNN
F 1 "100uH" V 6110 2050 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P5.08mm_Vertical_Fastron_MICC" H 6200 2050 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 5E5E0A17
P 6600 2450
F 0 "C14" H 6715 2496 50  0000 L CNN
F 1 "0.1uF" H 6715 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6638 2300 50  0001 C CNN
F 3 "~" H 6600 2450 50  0001 C CNN
	1    6600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 750  7400 750 
Wire Wire Line
	7400 750  7400 1850
Wire Wire Line
	7400 1850 7100 1850
Wire Wire Line
	7100 1850 7100 1900
Wire Wire Line
	7100 2200 7100 2300
Wire Wire Line
	6200 2200 6200 2350
Wire Wire Line
	6200 2650 6200 2750
$Comp
L power:GND #PWR033
U 1 1 5E63EB79
P 6600 2700
F 0 "#PWR033" H 6600 2450 50  0001 C CNN
F 1 "GND" H 6605 2527 50  0000 C CNN
F 2 "" H 6600 2700 50  0001 C CNN
F 3 "" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5E63EEF5
P 7100 2600
F 0 "#PWR035" H 7100 2350 50  0001 C CNN
F 1 "GND" H 7105 2427 50  0000 C CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2600 6600 2700
Wire Wire Line
	6200 1900 6200 1750
Wire Wire Line
	6200 1750 6300 1750
Connection ~ 6300 1750
Wire Wire Line
	6600 2200 7100 2200
Wire Wire Line
	6600 2050 6600 2200
Connection ~ 6600 2200
Wire Wire Line
	6600 2200 6600 2300
$Comp
L Device:C C16
U 1 1 5E663EB6
P 7600 2450
F 0 "C16" H 7715 2496 50  0000 L CNN
F 1 "0.1uF" H 7715 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7638 2300 50  0001 C CNN
F 3 "~" H 7600 2450 50  0001 C CNN
	1    7600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5E664830
P 7600 2650
F 0 "#PWR037" H 7600 2400 50  0001 C CNN
F 1 "GND" H 7605 2477 50  0000 C CNN
F 2 "" H 7600 2650 50  0001 C CNN
F 3 "" H 7600 2650 50  0001 C CNN
	1    7600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5E664B86
P 7600 1950
F 0 "R12" H 7400 2050 50  0000 L CNN
F 1 "47" H 7450 1900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7530 1950 50  0001 C CNN
F 3 "~" H 7600 1950 50  0001 C CNN
	1    7600 1950
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR036
U 1 1 5E66500D
P 7600 1700
F 0 "#PWR036" H 7600 1550 50  0001 C CNN
F 1 "+12V" H 7615 1873 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1700 7600 1800
Wire Wire Line
	7600 2100 7600 2200
Wire Wire Line
	7600 2600 7600 2650
Wire Wire Line
	7400 1850 7400 2200
Wire Wire Line
	7400 2200 7600 2200
Connection ~ 7400 1850
Connection ~ 7600 2200
Wire Wire Line
	7600 2200 7600 2300
$Comp
L Device:R R13
U 1 1 5E6992CA
P 7100 2050
F 0 "R13" H 7170 2096 50  0000 L CNN
F 1 "5.6k" H 7170 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7030 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	1    0    0    -1  
$EndComp
Connection ~ 7100 2200
$Comp
L Device:R R11
U 1 1 5E6995F1
P 6200 2500
F 0 "R11" H 6270 2546 50  0000 L CNN
F 1 "68" H 6270 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6130 2500 50  0001 C CNN
F 3 "~" H 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D13
U 1 1 5E69C061
P 1350 2300
F 0 "D13" H 1350 2517 50  0000 C CNN
F 1 "1N4148W" H 1350 2426 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 1350 2125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1350 2300 50  0001 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
Connection ~ 1200 2300
Connection ~ 1500 2300
Wire Wire Line
	1500 1850 1500 2300
Wire Wire Line
	1200 1850 1200 2300
$Comp
L Device:L L6
U 1 1 5E6B768D
P 2350 2500
F 0 "L6" H 2550 2450 50  0000 L CNN
F 1 "100uH" H 2450 2550 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P5.08mm_Vertical_Fastron_MICC" H 2350 2500 50  0001 C CNN
F 3 "~" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5E6C9025
P 2500 3800
F 0 "R38" H 2570 3846 50  0000 L CNN
F 1 "270" H 2570 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2430 3800 50  0001 C CNN
F 3 "~" H 2500 3800 50  0001 C CNN
	1    2500 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5E6C9569
P 2150 3500
F 0 "C39" V 2000 3500 50  0000 C CNN
F 1 "0.2uF" V 2350 3550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2188 3350 50  0001 C CNN
F 3 "~" H 2150 3500 50  0001 C CNN
	1    2150 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 3500 2500 3500
Wire Wire Line
	2500 3650 2500 3500
Connection ~ 2500 3500
Wire Wire Line
	2500 3500 2650 3500
Wire Wire Line
	2350 2700 2350 3200
Wire Wire Line
	2350 3200 1850 3200
Wire Wire Line
	1850 3200 1850 3500
Wire Wire Line
	1850 3500 2000 3500
Connection ~ 2350 2700
$Comp
L power:GND #PWR020
U 1 1 5E6F29D0
P 2500 4100
F 0 "#PWR020" H 2500 3850 50  0001 C CNN
F 1 "GND" H 2505 3927 50  0000 C CNN
F 2 "" H 2500 4100 50  0001 C CNN
F 3 "" H 2500 4100 50  0001 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4100 2500 3950
$Comp
L Device:C C101
U 1 1 5E701766
P 4050 3850
F 0 "C101" H 4165 3896 50  0000 L CNN
F 1 "270pF" H 4165 3805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 4088 3700 50  0001 C CNN
F 3 "~" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C102
U 1 1 5E701FC5
P 4550 3850
F 0 "C102" H 4665 3896 50  0000 L CNN
F 1 "180pF" H 4665 3805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W2.5mm_P5.00mm" H 4588 3700 50  0001 C CNN
F 3 "~" H 4550 3850 50  0001 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2700 8400 2650
Wire Wire Line
	8400 2650 9150 2650
Wire Wire Line
	9150 2650 9150 3700
$Comp
L Device:R R37
U 1 1 5E72F992
P 8550 4250
F 0 "R37" H 8620 4296 50  0000 L CNN
F 1 "47" H 8620 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8480 4250 50  0001 C CNN
F 3 "~" H 8550 4250 50  0001 C CNN
	1    8550 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4200 8800 4250
Wire Wire Line
	9450 5750 9450 5850
$Comp
L Device:C C26
U 1 1 5E7E69AF
P 9200 4800
F 0 "C26" V 8948 4800 50  0000 C CNN
F 1 "0.01uF" V 9039 4800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 9238 4650 50  0001 C CNN
F 3 "~" H 9200 4800 50  0001 C CNN
	1    9200 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 3700 9150 4650
Wire Wire Line
	9150 4650 9200 4650
Connection ~ 9150 3700
Wire Wire Line
	9200 4950 9200 5850
Wire Wire Line
	9200 5850 9450 5850
Connection ~ 9450 5850
Wire Wire Line
	9450 5850 9450 5950
$Comp
L Diode:BAT54S D203
U 1 1 5E806BF7
P 8650 6050
F 0 "D203" V 8604 6138 50  0000 L CNN
F 1 "BAT54S" V 8695 6138 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8725 6175 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 8530 6050 50  0001 C CNN
	1    8650 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 4250 8700 4250
Wire Wire Line
	8400 4250 7950 4250
Wire Wire Line
	7950 4250 7950 4300
Connection ~ 7950 4300
Wire Wire Line
	7950 4300 7800 4300
$Comp
L power:GND #PWR038
U 1 1 5E87ABBB
P 8900 5700
F 0 "#PWR038" H 8900 5450 50  0001 C CNN
F 1 "GND" H 8905 5527 50  0000 C CNN
F 2 "" H 8900 5700 50  0001 C CNN
F 3 "" H 8900 5700 50  0001 C CNN
	1    8900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5450 9000 5450
Wire Wire Line
	9000 5450 9000 5250
Wire Wire Line
	9000 5250 8850 5250
Wire Wire Line
	9450 6250 9050 6250
Wire Wire Line
	9050 6250 9050 6050
Wire Wire Line
	9050 6050 8850 6050
Wire Wire Line
	8650 5550 8650 5700
Connection ~ 8650 5700
Wire Wire Line
	8650 5700 8650 5750
Wire Wire Line
	7450 4950 7450 5550
$Comp
L Device:C C28
U 1 1 5E95A840
P 6950 5800
F 0 "C28" H 7065 5846 50  0000 L CNN
F 1 "0.1uF" H 7065 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6988 5650 50  0001 C CNN
F 3 "~" H 6950 5800 50  0001 C CNN
	1    6950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5700 8900 5700
$Comp
L power:GND #PWR034
U 1 1 5E96C437
P 6950 6150
F 0 "#PWR034" H 6950 5900 50  0001 C CNN
F 1 "GND" H 6955 5977 50  0000 C CNN
F 2 "" H 6950 6150 50  0001 C CNN
F 3 "" H 6950 6150 50  0001 C CNN
	1    6950 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5650 6950 5550
Wire Wire Line
	6950 5550 7450 5550
Connection ~ 7450 5550
Wire Wire Line
	7450 5550 7450 6350
$Comp
L Device:R R26
U 1 1 5E98DA09
P 6650 5550
F 0 "R26" V 6750 5550 50  0000 C CNN
F 1 "1k" V 6550 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6580 5550 50  0001 C CNN
F 3 "~" H 6650 5550 50  0001 C CNN
	1    6650 5550
	0    1    1    0   
$EndComp
$Comp
L Device:C C27
U 1 1 5E99EFE0
P 6300 5750
F 0 "C27" H 6415 5796 50  0000 L CNN
F 1 "0.1uF" H 6415 5705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6338 5600 50  0001 C CNN
F 3 "~" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5950 6950 6050
Wire Wire Line
	6800 5550 6950 5550
Connection ~ 6950 5550
Wire Wire Line
	6500 5550 6300 5550
Wire Wire Line
	6300 5550 6300 5600
Wire Wire Line
	6300 5900 6300 6050
Wire Wire Line
	6300 6050 6950 6050
Connection ~ 6950 6050
Wire Wire Line
	6950 6050 6950 6150
$Comp
L Device:C C44
U 1 1 5EA21C7D
P 6000 5550
F 0 "C44" V 5750 5550 50  0000 C CNN
F 1 "0.2uF" V 5850 5550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6038 5400 50  0001 C CNN
F 3 "~" H 6000 5550 50  0001 C CNN
	1    6000 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5550 6300 5550
Connection ~ 6300 5550
$Comp
L Device:R R44
U 1 1 5EA33113
P 5600 6200
F 0 "R44" H 5670 6246 50  0000 L CNN
F 1 "10k" H 5670 6155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 5530 6200 50  0001 C CNN
F 3 "~" H 5600 6200 50  0001 C CNN
	1    5600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5EA338CE
P 5600 4950
F 0 "R43" H 5670 4996 50  0000 L CNN
F 1 "33k" H 5670 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 5530 4950 50  0001 C CNN
F 3 "~" H 5600 4950 50  0001 C CNN
	1    5600 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5EA340AB
P 4900 4950
F 0 "R45" H 4970 4996 50  0000 L CNN
F 1 "1k" H 4970 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4830 4950 50  0001 C CNN
F 3 "~" H 4900 4950 50  0001 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R46
U 1 1 5EA34606
P 4900 6200
F 0 "R46" H 4970 6246 50  0000 L CNN
F 1 "100" H 4970 6155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4830 6200 50  0001 C CNN
F 3 "~" H 4900 6200 50  0001 C CNN
	1    4900 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R47
U 1 1 5EA34AB4
P 4900 6700
F 0 "R47" H 4970 6746 50  0000 L CNN
F 1 "330" H 4970 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4830 6700 50  0001 C CNN
F 3 "~" H 4900 6700 50  0001 C CNN
	1    4900 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R48
U 1 1 5EA34D1B
P 4900 4450
F 0 "R48" H 4970 4496 50  0000 L CNN
F 1 "390" H 4970 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4830 4450 50  0001 C CNN
F 3 "~" H 4900 4450 50  0001 C CNN
	1    4900 4450
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q14
U 1 1 5EA350E6
P 5000 5550
F 0 "Q14" H 4550 5450 60  0000 L CNN
F 1 "2N2222A" H 4550 5350 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5200 5750 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 5200 5850 60  0001 L CNN
F 4 "2N2222ACS-ND" H 5200 5950 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 5200 6050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5200 6150 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5200 6250 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 5200 6350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 5200 6450 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 5200 6550 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 5200 6650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5200 6750 60  0001 L CNN "Status"
	1    5000 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR031
U 1 1 5EA36413
P 4900 4200
F 0 "#PWR031" H 4900 4050 50  0001 C CNN
F 1 "+12V" H 4915 4373 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4200 4900 4300
Wire Wire Line
	4900 4600 4900 4700
Wire Wire Line
	4900 5100 4900 5250
Wire Wire Line
	4900 5750 4900 6050
$Comp
L power:GND #PWR032
U 1 1 5EA8AF8A
P 4900 7150
F 0 "#PWR032" H 4900 6900 50  0001 C CNN
F 1 "GND" H 4905 6977 50  0000 C CNN
F 2 "" H 4900 7150 50  0001 C CNN
F 3 "" H 4900 7150 50  0001 C CNN
	1    4900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6850 4900 7000
Wire Wire Line
	5850 5550 5600 5550
Wire Wire Line
	5600 5550 5600 5250
Wire Wire Line
	5600 6050 5600 5550
Connection ~ 5600 5550
Wire Wire Line
	5600 6350 5600 7000
Wire Wire Line
	5600 7000 4900 7000
Connection ~ 4900 7000
Wire Wire Line
	4900 7000 4900 7150
$Comp
L Device:CP C46
U 1 1 5EAD20B7
P 4400 6750
F 0 "C46" H 4518 6796 50  0000 L CNN
F 1 "4.7uF" H 4518 6705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4438 6600 50  0001 C CNN
F 3 "~" H 4400 6750 50  0001 C CNN
	1    4400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6600 4400 6550
Wire Wire Line
	4400 6550 4900 6550
Connection ~ 4900 6550
Wire Wire Line
	4400 6900 4400 7000
Wire Wire Line
	4400 7000 4900 7000
Wire Wire Line
	5600 4800 5600 4700
Connection ~ 4900 4700
Wire Wire Line
	4900 4700 4900 4800
$Comp
L Device:C C45
U 1 1 5EB0B2A2
P 5200 5250
F 0 "C45" V 5300 5400 50  0000 C CNN
F 1 "0.02uF" V 5050 5350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 5238 5100 50  0001 C CNN
F 3 "~" H 5200 5250 50  0001 C CNN
	1    5200 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5250 4900 5250
Connection ~ 4900 5250
Wire Wire Line
	4900 5250 4900 5350
Wire Wire Line
	5350 5250 5600 5250
Connection ~ 5600 5250
Wire Wire Line
	5600 5250 5600 5100
$Comp
L Device:C C47
U 1 1 5EB33156
P 4400 4850
F 0 "C47" H 4700 4850 50  0000 C CNN
F 1 "0.2uF" H 4650 4700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 4438 4700 50  0001 C CNN
F 3 "~" H 4400 4850 50  0001 C CNN
	1    4400 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4700 4900 4700
$Comp
L power:GND #PWR030
U 1 1 5EB48686
P 4400 5000
F 0 "#PWR030" H 4400 4750 50  0001 C CNN
F 1 "GND" H 4405 4827 50  0000 C CNN
F 2 "" H 4400 5000 50  0001 C CNN
F 3 "" H 4400 5000 50  0001 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5EB489B3
P 4750 5250
F 0 "C40" V 4950 5250 50  0000 C CNN
F 1 "0.2uF" V 4550 5250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 4788 5100 50  0001 C CNN
F 3 "~" H 4750 5250 50  0001 C CNN
	1    4750 5250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148W D20
U 1 1 5EB5F460
P 4350 5500
F 0 "D20" V 4396 5420 50  0000 R CNN
F 1 "1N4148W" V 4305 5420 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 4350 5325 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4350 5500 50  0001 C CNN
	1    4350 5500
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148W D19
U 1 1 5EB602B6
P 4150 5500
F 0 "D19" V 4196 5420 50  0000 R CNN
F 1 "1N4148W" V 4105 5420 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 4150 5325 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4150 5500 50  0001 C CNN
	1    4150 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 5250 4350 5250
Wire Wire Line
	4350 5250 4350 5350
Wire Wire Line
	4900 4700 5600 4700
Wire Wire Line
	4150 5350 4150 5250
Wire Wire Line
	4150 5250 4350 5250
Connection ~ 4350 5250
$Comp
L power:GND #PWR029
U 1 1 5EB8BD07
P 4350 5950
F 0 "#PWR029" H 4350 5700 50  0001 C CNN
F 1 "GND" H 4355 5777 50  0000 C CNN
F 2 "" H 4350 5950 50  0001 C CNN
F 3 "" H 4350 5950 50  0001 C CNN
	1    4350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5650 4350 5800
Wire Wire Line
	4150 5650 4150 5800
Wire Wire Line
	4150 5800 4350 5800
Connection ~ 4350 5800
Wire Wire Line
	4350 5800 4350 5950
Wire Wire Line
	5600 5550 5200 5550
Wire Wire Line
	7300 1050 7300 1150
$Comp
L Device:C C15
U 1 1 5ED7752E
P 7750 1150
F 0 "C15" V 7498 1150 50  0000 C CNN
F 1 "0.01uF" V 7589 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7788 1000 50  0001 C CNN
F 3 "~" H 7750 1150 50  0001 C CNN
	1    7750 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 1150 8200 1150
Wire Wire Line
	7600 1150 7300 1150
Connection ~ 7300 1150
Wire Wire Line
	7300 1150 7300 1250
Wire Wire Line
	10200 3900 10200 4050
Wire Wire Line
	4900 6350 4900 6550
Wire Wire Line
	9800 3800 10200 3800
Wire Wire Line
	9800 3200 9800 3800
Wire Wire Line
	950  4850 1300 4850
Wire Wire Line
	1600 4850 2050 4850
$Sheet
S 5200 7300 850  500 
U 5F479ABE
F0 "Sheet5F479ABD" 50
F1 "2n2-40-audio.sch" 50
$EndSheet
Text GLabel 4000 5250 0    50   Input ~ 0
Audio
Wire Wire Line
	4150 5250 4000 5250
$Comp
L power:GND #PWR0107
U 1 1 5E109613
P 4150 1850
F 0 "#PWR0107" H 4150 1600 50  0001 C CNN
F 1 "GND" H 4155 1677 50  0000 C CNN
F 2 "" H 4150 1850 50  0001 C CNN
F 3 "" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5E10E5D9
P 3850 1450
F 0 "J10" V 3814 1362 50  0000 R CNN
F 1 "Conn_01x01" V 3723 1362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 3850 1450 50  0001 C CNN
F 3 "~" H 3850 1450 50  0001 C CNN
	1    3850 1450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 5E10F1A5
P 4150 1450
F 0 "J11" V 4114 1362 50  0000 R CNN
F 1 "Conn_01x01" V 4023 1362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4150 1450 50  0001 C CNN
F 3 "~" H 4150 1450 50  0001 C CNN
	1    4150 1450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5E10F750
P 4450 1450
F 0 "J12" V 4414 1362 50  0000 R CNN
F 1 "Conn_01x01" V 4323 1362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4450 1450 50  0001 C CNN
F 3 "~" H 4450 1450 50  0001 C CNN
	1    4450 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 1650 4150 1650
Wire Wire Line
	4150 1650 4450 1650
Connection ~ 4150 1650
Wire Wire Line
	4150 1850 4150 1650
Connection ~ 4150 5250
Wire Wire Line
	7450 4950 8650 4950
Wire Wire Line
	7450 6350 8650 6350
Wire Wire Line
	9250 500  9250 950 
Wire Wire Line
	9250 1750 9250 2150
$Comp
L Device:Crystal Y1
U 1 1 5F2285B2
P 3300 3500
F 0 "Y1" H 3300 3768 50  0000 C CNN
F 1 "4.915MHz" H 3300 3677 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 3300 3500 50  0001 C CNN
F 3 "~" H 3300 3500 50  0001 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C100
U 1 1 5F22D841
P 3550 3850
F 0 "C100" H 3665 3896 50  0000 L CNN
F 1 "180pF" H 3665 3805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W2.5mm_P5.00mm" H 3588 3700 50  0001 C CNN
F 3 "~" H 3550 3850 50  0001 C CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4200 4050 4100
Wire Wire Line
	4150 3500 4050 3500
Wire Wire Line
	4450 3500 4550 3500
Wire Wire Line
	3650 3500 3550 3500
Wire Wire Line
	3150 3500 2950 3500
Wire Wire Line
	3550 3700 3550 3500
Connection ~ 3550 3500
Wire Wire Line
	3550 3500 3450 3500
Wire Wire Line
	4050 3700 4050 3500
Connection ~ 4050 3500
Wire Wire Line
	4050 3500 3950 3500
Wire Wire Line
	4550 3700 4550 3500
Connection ~ 4550 3500
Wire Wire Line
	4550 3500 4650 3500
Wire Wire Line
	4550 4000 4550 4100
Wire Wire Line
	4550 4100 4050 4100
Connection ~ 4050 4100
Wire Wire Line
	4050 4100 4050 4000
Wire Wire Line
	3550 4000 3550 4100
Wire Wire Line
	3550 4100 4050 4100
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 5F31B0E5
P 5150 1450
F 0 "J13" V 5114 1362 50  0000 R CNN
F 1 "Conn_01x01" V 5023 1362 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5150 1450 50  0001 C CNN
F 3 "~" H 5150 1450 50  0001 C CNN
	1    5150 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 1650 4450 1650
Connection ~ 4450 1650
Text GLabel 650  800  0    50   Input ~ 0
D
Wire Wire Line
	750  800  650  800 
Text GLabel 9700 3800 0    50   Input ~ 0
vfo
Wire Wire Line
	9700 3800 9800 3800
Connection ~ 9800 3800
Text GLabel 10150 5500 0    50   Input ~ 0
bfo
Wire Wire Line
	10250 5650 10250 5500
Wire Wire Line
	10250 5500 10150 5500
Connection ~ 10250 5650
$EndSCHEMATC
