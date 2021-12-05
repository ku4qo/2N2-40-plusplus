EESchema Schematic File Version 4
LIBS:2n2-trans-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 2
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
L Mechanical:MountingHole H1
U 1 1 5F5A4413
P 700 700
F 0 "H1" H 800 746 50  0000 L CNN
F 1 "MountingHole" H 800 655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 700 700 50  0001 C CNN
F 3 "~" H 700 700 50  0001 C CNN
	1    700  700 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F5A5684
P 1150 700
F 0 "H2" H 1250 746 50  0000 L CNN
F 1 "MountingHole" H 1250 655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1150 700 50  0001 C CNN
F 3 "~" H 1150 700 50  0001 C CNN
	1    1150 700 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F5A5A77
P 700 1000
F 0 "H3" H 800 1046 50  0000 L CNN
F 1 "MountingHole" H 800 955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 700 1000 50  0001 C CNN
F 3 "~" H 700 1000 50  0001 C CNN
	1    700  1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F5A5E05
P 1150 1000
F 0 "H4" H 1250 1046 50  0000 L CNN
F 1 "MountingHole" H 1250 955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1150 1000 50  0001 C CNN
F 3 "~" H 1150 1000 50  0001 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F22A03E
P 1200 1900
F 0 "#PWR0107" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1205 1727 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5F709426
P 700 1900
F 0 "J9" H 808 2181 50  0000 C CNN
F 1 "xmit" H 808 2090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 700 1900 50  0001 C CNN
F 3 "~" H 700 1900 50  0001 C CNN
	1    700  1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1900 1200 1900
Wire Wire Line
	1000 1800 900  1800
Wire Wire Line
	1000 1450 1000 1800
Wire Wire Line
	1200 1450 1000 1450
Text GLabel 1100 2500 2    50   Input ~ 0
clk2
Wire Wire Line
	900  2000 1000 2000
Wire Wire Line
	1000 2000 1000 2500
Wire Wire Line
	1000 2500 1100 2500
Text GLabel 1200 1450 2    50   Input ~ 0
cw
$EndSCHEMATC
