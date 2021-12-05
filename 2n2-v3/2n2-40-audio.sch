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
Text GLabel 1000 2100 0    50   Input ~ 0
Audio
$Comp
L Device:R_POT POT3
U 1 1 5F6BFECD
P 1550 2250
F 0 "POT3" H 1480 2296 50  0000 R CNN
F 1 "10k" H 1480 2205 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1550 2250 50  0001 C CNN
F 3 "~" H 1550 2250 50  0001 C CNN
	1    1550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2100 1550 2100
$Comp
L power:GND #PWR0101
U 1 1 5F6C0A27
P 1550 2550
F 0 "#PWR0101" H 1550 2300 50  0001 C CNN
F 1 "GND" H 1555 2377 50  0000 C CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2400 1550 2550
$Comp
L Device:C C41
U 1 1 5F6C0C09
P 2050 2250
F 0 "C41" V 1798 2250 50  0000 C CNN
F 1 "0.22uF" V 1889 2250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2088 2100 50  0001 C CNN
F 3 "~" H 2050 2250 50  0001 C CNN
	1    2050 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2250 1900 2250
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q9
U 1 1 5F6C149F
P 2600 1750
F 0 "Q9" H 2788 1803 60  0000 L CNN
F 1 "2N2222A" H 2788 1697 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 1950 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 2800 2050 60  0001 L CNN
F 4 "2N2222ACS-ND" H 2800 2150 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 2800 2250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2800 2350 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 2800 2450 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 2800 2550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 2800 2650 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 2800 2750 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 2800 2850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2800 2950 60  0001 L CNN "Status"
	1    2600 1750
	1    0    0    -1  
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q10
U 1 1 5F6C24D8
P 2600 2750
F 0 "Q10" H 2788 2697 60  0000 L CNN
F 1 "2N2222A" H 2788 2803 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 2950 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 2800 3050 60  0001 L CNN
F 4 "2N2222ACS-ND" H 2800 3150 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 2800 3250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2800 3350 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 2800 3450 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 2800 3550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 2800 3650 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 2800 3750 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 2800 3850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2800 3950 60  0001 L CNN "Status"
	1    2600 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5F6C42A2
P 2550 1250
F 0 "R27" V 2343 1250 50  0000 C CNN
F 1 "39k" V 2434 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2480 1250 50  0001 C CNN
F 3 "~" H 2550 1250 50  0001 C CNN
	1    2550 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5F6C63D6
P 3000 2250
F 0 "R31" V 2793 2250 50  0000 C CNN
F 1 "470" V 2884 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2930 2250 50  0001 C CNN
F 3 "~" H 3000 2250 50  0001 C CNN
	1    3000 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5F6C8AF5
P 2550 3350
F 0 "R29" V 2343 3350 50  0000 C CNN
F 1 "39k" V 2434 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 2480 3350 50  0001 C CNN
F 3 "~" H 2550 3350 50  0001 C CNN
	1    2550 3350
	0    1    1    0   
$EndComp
$Comp
L Device:CP C31
U 1 1 5F6C967E
P 2200 3800
F 0 "C31" H 2318 3846 50  0000 L CNN
F 1 "4.7uF" H 2318 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2238 3650 50  0001 C CNN
F 3 "~" H 2200 3800 50  0001 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2250 2350 2250
Wire Wire Line
	2350 2250 2350 1750
Wire Wire Line
	2350 1750 2400 1750
Wire Wire Line
	2400 1250 2350 1250
Wire Wire Line
	2350 1250 2350 1750
Connection ~ 2350 1750
Wire Wire Line
	2400 2750 2200 2750
Wire Wire Line
	2200 2750 2200 3350
Wire Wire Line
	2400 3350 2200 3350
Connection ~ 2200 3350
Wire Wire Line
	2200 3350 2200 3650
Wire Wire Line
	2700 2550 2700 2250
Wire Wire Line
	2700 2250 2850 2250
Wire Wire Line
	2700 1950 2700 2250
Connection ~ 2700 2250
$Comp
L power:GND #PWR0102
U 1 1 5F6CAA3C
P 3300 2300
F 0 "#PWR0102" H 3300 2050 50  0001 C CNN
F 1 "GND" H 3305 2127 50  0000 C CNN
F 2 "" H 3300 2300 50  0001 C CNN
F 3 "" H 3300 2300 50  0001 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2300 3300 2250
Wire Wire Line
	3300 2250 3150 2250
$Comp
L power:GND #PWR0103
U 1 1 5F6CAFA2
P 2200 4100
F 0 "#PWR0103" H 2200 3850 50  0001 C CNN
F 1 "GND" H 2205 3927 50  0000 C CNN
F 2 "" H 2200 4100 50  0001 C CNN
F 3 "" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3950 2200 4100
$Comp
L Device:CP C30
U 1 1 5F6CBE89
P 2900 3800
F 0 "C30" H 3018 3846 50  0000 L CNN
F 1 "470uF" H 3018 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2938 3650 50  0001 C CNN
F 3 "~" H 2900 3800 50  0001 C CNN
	1    2900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5F6CC433
P 3300 3800
F 0 "R30" H 3230 3754 50  0000 R CNN
F 1 "470" H 3230 3845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 3230 3800 50  0001 C CNN
F 3 "~" H 3300 3800 50  0001 C CNN
	1    3300 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3950 3300 4100
Wire Wire Line
	3300 4100 2900 4100
Connection ~ 2200 4100
Wire Wire Line
	2900 3950 2900 4100
Connection ~ 2900 4100
Wire Wire Line
	2900 4100 2200 4100
Wire Wire Line
	2700 3350 2900 3350
Wire Wire Line
	3300 3350 3300 3650
Wire Wire Line
	2900 3650 2900 3350
Connection ~ 2900 3350
Wire Wire Line
	2900 3350 3300 3350
$Comp
L Device:CP C29
U 1 1 5F6CDAA4
P 2900 850
F 0 "C29" H 2782 804 50  0000 R CNN
F 1 "470uF" H 2782 895 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2938 700 50  0001 C CNN
F 3 "~" H 2900 850 50  0001 C CNN
	1    2900 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R28
U 1 1 5F6CE242
P 3350 850
F 0 "R28" H 3280 804 50  0000 R CNN
F 1 "470" H 3280 895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 3280 850 50  0001 C CNN
F 3 "~" H 3350 850 50  0001 C CNN
	1    3350 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1250 2900 1250
Wire Wire Line
	3350 1250 3350 1000
Wire Wire Line
	2900 1000 2900 1250
Connection ~ 2900 1250
Wire Wire Line
	2900 1250 3350 1250
$Comp
L power:GND #PWR0104
U 1 1 5F6CEE21
P 3750 700
F 0 "#PWR0104" H 3750 450 50  0001 C CNN
F 1 "GND" H 3755 527 50  0000 C CNN
F 2 "" H 3750 700 50  0001 C CNN
F 3 "" H 3750 700 50  0001 C CNN
	1    3750 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 700  2900 600 
Wire Wire Line
	2900 600  3350 600 
Wire Wire Line
	3750 600  3750 700 
Wire Wire Line
	3350 700  3350 600 
Connection ~ 3350 600 
Wire Wire Line
	3350 600  3750 600 
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q11
U 1 1 5F6CFDCB
P 3850 1450
F 0 "Q11" V 4197 1450 60  0000 C CNN
F 1 "2N2222A" V 4091 1450 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4050 1650 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4050 1750 60  0001 L CNN
F 4 "2N2222ACS-ND" H 4050 1850 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 4050 1950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4050 2050 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4050 2150 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4050 2250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 4050 2350 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 4050 2450 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 4050 2550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4050 2650 60  0001 L CNN "Status"
	1    3850 1450
	0    1    -1   0   
$EndComp
$Comp
L 2n2-trans-rescue:2N2222A-digikey Q12
U 1 1 5F6D0CB4
P 3850 3150
F 0 "Q12" V 4091 3150 60  0000 C CNN
F 1 "2N2222A" V 4197 3150 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4050 3350 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4050 3450 60  0001 L CNN
F 4 "2N2222ACS-ND" H 4050 3550 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 4050 3650 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4050 3750 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4050 3850 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4050 3950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 4050 4050 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 4050 4150 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 4050 4250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4050 4350 60  0001 L CNN "Status"
	1    3850 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1350 3350 1350
Wire Wire Line
	3350 1350 3350 1250
Connection ~ 3350 1250
Wire Wire Line
	3650 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3350
Connection ~ 3300 3350
Wire Wire Line
	2700 2950 3650 2950
Wire Wire Line
	3650 2950 3650 2850
Wire Wire Line
	3650 2850 3850 2850
Wire Wire Line
	3850 2850 3850 2950
Wire Wire Line
	2700 1550 3600 1550
Wire Wire Line
	3600 1550 3600 1700
Wire Wire Line
	3600 1700 3850 1700
Wire Wire Line
	3850 1700 3850 1650
$Comp
L Device:R R33
U 1 1 5F6D523E
P 4300 2650
F 0 "R33" V 4093 2650 50  0000 C CNN
F 1 "2.7k" V 4184 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4230 2650 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
	1    4300 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 5F6D597E
P 4300 2050
F 0 "R32" V 4093 2050 50  0000 C CNN
F 1 "2.7k" V 4184 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 4230 2050 50  0001 C CNN
F 3 "~" H 4300 2050 50  0001 C CNN
	1    4300 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2050 3850 2050
Wire Wire Line
	3850 2050 3850 1700
Connection ~ 3850 1700
Wire Wire Line
	4150 2650 3850 2650
Wire Wire Line
	3850 2650 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	4450 2050 4650 2050
Wire Wire Line
	4650 2050 4650 2350
Wire Wire Line
	4650 2650 4450 2650
Connection ~ 4650 2350
Wire Wire Line
	4650 2350 4650 2650
$Comp
L power:+12V #PWR0105
U 1 1 5F6D9FAA
P 4650 1850
F 0 "#PWR0105" H 4650 1700 50  0001 C CNN
F 1 "+12V" H 4665 2023 50  0000 C CNN
F 2 "" H 4650 1850 50  0001 C CNN
F 3 "" H 4650 1850 50  0001 C CNN
	1    4650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1850 4650 2050
Connection ~ 4650 2050
$Comp
L Device:CP C33
U 1 1 5F6DB1BA
P 4650 2950
F 0 "C33" H 4768 2996 50  0000 L CNN
F 1 "470uF" H 4768 2905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 4688 2800 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F6DB92A
P 4650 3100
F 0 "#PWR0106" H 4650 2850 50  0001 C CNN
F 1 "GND" H 4655 2927 50  0000 C CNN
F 2 "" H 4650 3100 50  0001 C CNN
F 3 "" H 4650 3100 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 5F6DD9B6
P 5150 2950
F 0 "C32" H 5035 2904 50  0000 R CNN
F 1 "0.22uF" H 5035 2995 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 5188 2800 50  0001 C CNN
F 3 "~" H 5150 2950 50  0001 C CNN
	1    5150 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 3100 4650 3100
Connection ~ 4650 3100
Wire Wire Line
	5150 2800 4650 2800
Wire Wire Line
	4650 2800 4650 2650
Connection ~ 4650 2800
Connection ~ 4650 2650
Wire Wire Line
	4050 1350 5150 1350
Wire Wire Line
	5550 2550 5550 2650
Wire Wire Line
	5550 3350 4050 3350
Wire Wire Line
	4050 3350 4050 3250
$Comp
L Device:C C36
U 1 1 5F6E3653
P 5150 1900
F 0 "C36" H 5035 1854 50  0000 R CNN
F 1 "0.082uF" H 5035 1945 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 5188 1750 50  0001 C CNN
F 3 "~" H 5150 1900 50  0001 C CNN
	1    5150 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 1750 5150 1350
Connection ~ 5150 1350
Wire Wire Line
	5150 1350 5550 1350
Wire Wire Line
	5150 2050 5150 2650
Wire Wire Line
	5150 2650 5550 2650
Connection ~ 5550 2650
Wire Wire Line
	5550 2650 5550 3350
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5F6E6230
P 7550 2300
F 0 "J7" H 7522 2274 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7522 2183 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7550 2300 50  0001 C CNN
F 3 "~" H 7550 2300 50  0001 C CNN
	1    7550 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2350 5750 2350
$Comp
L 2n2-trans-rescue:42TM003-RC-SamacSys_Parts T10
U 1 1 5F6F7BAA
P 5750 2250
AR Path="/5F6F7BAA" Ref="T10"  Part="1" 
AR Path="/5F479ABE/5F6F7BAA" Ref="T10"  Part="1" 
F 0 "T10" H 6350 2515 50  0000 C CNN
F 1 "42TM003-RC" H 6350 2424 50  0000 C CNN
F 2 "SamacSys_Parts:DIPS1270W61P356L2200H1699Q6N" H 6800 2350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/42TM003-RC.pdf" H 6800 2250 50  0001 L CNN
F 4 "Audio Transformers / Signal Transformers XFMR OUT 1.2KCT/8CT" H 6800 2150 50  0001 L CNN "Description"
F 5 "16.993" H 6800 2050 50  0001 L CNN "Height"
F 6 "42TM003-RC" H 6800 1950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=42TM003-RC" H 6800 1850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Xicon" H 6800 1750 50  0001 L CNN "Manufacturer_Name"
F 9 "42TM003-RC" H 6800 1650 50  0001 L CNN "Manufacturer_Part_Number"
	1    5750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2400 7350 2450
Wire Wire Line
	7350 2450 6950 2450
Wire Wire Line
	7350 2300 7350 2250
Wire Wire Line
	7350 2250 6950 2250
Wire Wire Line
	5550 2450 5750 2450
Wire Wire Line
	5550 1350 5550 2450
Wire Wire Line
	5550 2550 5650 2550
Wire Wire Line
	5650 2550 5650 2250
Wire Wire Line
	5650 2250 5750 2250
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
L Mechanical:MountingHole_Pad H5
U 1 1 5F5AA840
P 1050 1300
F 0 "H5" H 1150 1349 50  0000 L CNN
F 1 "MountingHole_Pad" H 1150 1258 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 1050 1300 50  0001 C CNN
F 3 "~" H 1050 1300 50  0001 C CNN
	1    1050 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5F5AAF6C
P 700 1300
F 0 "H6" H 800 1349 50  0000 L CNN
F 1 "MountingHole_Pad" H 800 1258 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 700 1300 50  0001 C CNN
F 3 "~" H 700 1300 50  0001 C CNN
	1    700  1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F5ABAB1
P 900 1700
F 0 "#PWR0108" H 900 1450 50  0001 C CNN
F 1 "GND" H 905 1527 50  0000 C CNN
F 2 "" H 900 1700 50  0001 C CNN
F 3 "" H 900 1700 50  0001 C CNN
	1    900  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1400 700  1550
Wire Wire Line
	700  1550 900  1550
Wire Wire Line
	1050 1550 1050 1400
Wire Wire Line
	900  1700 900  1550
Connection ~ 900  1550
Wire Wire Line
	900  1550 1050 1550
$Comp
L Transistor_FET:BS170 Q20
U 1 1 5F5BC72F
P 1500 7450
F 0 "Q20" H 1706 7496 50  0000 L CNN
F 1 "BS170" H 1706 7405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1700 7375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 1500 7450 50  0001 L CNN
	1    1500 7450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q21
U 1 1 5F5BD9FA
P 2200 7450
F 0 "Q21" H 2406 7496 50  0000 L CNN
F 1 "BS170" H 2406 7405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 7375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 2200 7450 50  0001 L CNN
	1    2200 7450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q22
U 1 1 5F5BE09D
P 2850 7450
F 0 "Q22" H 3056 7496 50  0000 L CNN
F 1 "BS170" H 3056 7405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3050 7375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 2850 7450 50  0001 L CNN
	1    2850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7250 1600 7100
Wire Wire Line
	1600 7100 2300 7100
Wire Wire Line
	2950 7100 2950 7250
Wire Wire Line
	2300 7250 2300 7100
Connection ~ 2300 7100
Wire Wire Line
	2300 7100 2950 7100
Wire Wire Line
	1600 7650 1600 7700
Wire Wire Line
	1600 7700 2300 7700
Wire Wire Line
	2950 7700 2950 7650
Wire Wire Line
	2300 7650 2300 7700
Connection ~ 2300 7700
Wire Wire Line
	2300 7700 2950 7700
$Comp
L power:GND #PWR0109
U 1 1 5F646BF3
P 2950 7700
F 0 "#PWR0109" H 2950 7450 50  0001 C CNN
F 1 "GND" H 2955 7527 50  0000 C CNN
F 2 "" H 2950 7700 50  0001 C CNN
F 3 "" H 2950 7700 50  0001 C CNN
	1    2950 7700
	1    0    0    -1  
$EndComp
Connection ~ 2950 7700
Wire Wire Line
	2650 7450 2650 7850
Wire Wire Line
	2650 7850 2000 7850
Wire Wire Line
	1300 7850 1300 7450
Wire Wire Line
	2000 7450 2000 7850
Connection ~ 2000 7850
Wire Wire Line
	2000 7850 1300 7850
$Comp
L Transistor_BJT:2N3906 Q23
U 1 1 5F6537EB
P 2200 5950
F 0 "Q23" H 2390 5904 50  0000 L CNN
F 1 "MPS751" H 2390 5995 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 5875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2200 5950 50  0001 L CNN
	1    2200 5950
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 5F6580D8
P 2300 5650
F 0 "#PWR0110" H 2300 5500 50  0001 C CNN
F 1 "+12V" H 2315 5823 50  0000 C CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 5650 2300 5700
$Comp
L Device:R R51
U 1 1 5F65B372
P 2000 5700
F 0 "R51" V 1793 5700 50  0000 C CNN
F 1 "470" V 1884 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1930 5700 50  0001 C CNN
F 3 "~" H 2000 5700 50  0001 C CNN
	1    2000 5700
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:BS170 Q24
U 1 1 5F65B961
P 1250 6250
F 0 "Q24" H 1456 6296 50  0000 L CNN
F 1 "BS170" H 1456 6205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1450 6175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 1250 6250 50  0001 L CNN
	1    1250 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R50
U 1 1 5F65FF85
P 1600 5950
F 0 "R50" V 1393 5950 50  0000 C CNN
F 1 "1k" V 1484 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 1530 5950 50  0001 C CNN
F 3 "~" H 1600 5950 50  0001 C CNN
	1    1600 5950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F660AE2
P 1350 6500
F 0 "#PWR0111" H 1350 6250 50  0001 C CNN
F 1 "GND" H 1355 6327 50  0000 C CNN
F 2 "" H 1350 6500 50  0001 C CNN
F 3 "" H 1350 6500 50  0001 C CNN
	1    1350 6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 6450 1350 6500
Wire Wire Line
	2150 5700 2300 5700
Connection ~ 2300 5700
Wire Wire Line
	2300 5700 2300 5750
Wire Wire Line
	2000 5950 1850 5950
Wire Wire Line
	1850 5700 1850 5950
Connection ~ 1850 5950
Wire Wire Line
	1850 5950 1750 5950
Wire Wire Line
	1450 5950 1350 5950
Wire Wire Line
	1350 5950 1350 6050
$Comp
L Device:C C51
U 1 1 5F6728C8
P 2650 6600
F 0 "C51" H 2400 6700 50  0000 L CNN
F 1 "0.1uF" H 2350 6600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 2688 6450 50  0001 C CNN
F 3 "~" H 2650 6600 50  0001 C CNN
	1    2650 6600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5F672CD6
P 2050 6350
F 0 "C50" V 1798 6350 50  0000 C CNN
F 1 "1uF" V 1889 6350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 2088 6200 50  0001 C CNN
F 3 "~" H 2050 6350 50  0001 C CNN
	1    2050 6350
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 6150 2300 6350
Wire Wire Line
	2300 6350 2200 6350
Wire Wire Line
	2650 6450 2650 6350
Wire Wire Line
	2650 6350 2300 6350
Connection ~ 2300 6350
Wire Wire Line
	1900 6350 1850 6350
Wire Wire Line
	1850 6350 1850 5950
$Comp
L power:GND #PWR0112
U 1 1 5F691FFC
P 2650 6750
F 0 "#PWR0112" H 2650 6500 50  0001 C CNN
F 1 "GND" H 2655 6577 50  0000 C CNN
F 2 "" H 2650 6750 50  0001 C CNN
F 3 "" H 2650 6750 50  0001 C CNN
	1    2650 6750
	-1   0    0    -1  
$EndComp
$Comp
L Device:L L20
U 1 1 5F692AAB
P 2300 6650
F 0 "L20" H 2353 6696 50  0000 L CNN
F 1 "1uH" H 2353 6605 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" H 2300 6650 50  0001 C CNN
F 3 "~" H 2300 6650 50  0001 C CNN
	1    2300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6500 2300 6350
Wire Wire Line
	2300 6800 2300 7100
$Comp
L Device:C C52
U 1 1 5F6A2AC8
P 3500 7100
F 0 "C52" V 3250 7100 50  0000 L CNN
F 1 "0.1uF" V 3350 7050 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 3538 6950 50  0001 C CNN
F 3 "~" H 3500 7100 50  0001 C CNN
	1    3500 7100
	0    1    -1   0   
$EndComp
$Comp
L Device:L L21
U 1 1 5F6A342B
P 4200 7100
F 0 "L21" V 4019 7100 50  0000 C CNN
F 1 "1.4uH" V 4110 7100 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" H 4200 7100 50  0001 C CNN
F 3 "~" H 4200 7100 50  0001 C CNN
	1    4200 7100
	0    1    1    0   
$EndComp
$Comp
L Device:L L22
U 1 1 5F6A3FB6
P 4750 7100
F 0 "L22" V 4569 7100 50  0000 C CNN
F 1 "1.7uH" V 4660 7100 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" H 4750 7100 50  0001 C CNN
F 3 "~" H 4750 7100 50  0001 C CNN
	1    4750 7100
	0    1    1    0   
$EndComp
$Comp
L Device:L L23
U 1 1 5F6A4392
P 5300 7100
F 0 "L23" V 5119 7100 50  0000 C CNN
F 1 "1.4uH" V 5210 7100 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" H 5300 7100 50  0001 C CNN
F 3 "~" H 5300 7100 50  0001 C CNN
	1    5300 7100
	0    1    1    0   
$EndComp
$Comp
L Device:C C53
U 1 1 5F6A5892
P 3900 7450
F 0 "C53" H 3650 7550 50  0000 L CNN
F 1 "270pF" H 3600 7450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 3938 7300 50  0001 C CNN
F 3 "~" H 3900 7450 50  0001 C CNN
	1    3900 7450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C54
U 1 1 5F6A5CCD
P 4500 7450
F 0 "C54" H 4250 7550 50  0000 L CNN
F 1 "680pF" H 4200 7450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 4538 7300 50  0001 C CNN
F 3 "~" H 4500 7450 50  0001 C CNN
	1    4500 7450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5F6A5F2C
P 5050 7450
F 0 "C55" H 4800 7550 50  0000 L CNN
F 1 "680pF" H 4750 7450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 5088 7300 50  0001 C CNN
F 3 "~" H 5050 7450 50  0001 C CNN
	1    5050 7450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C56
U 1 1 5F6A629D
P 5550 7450
F 0 "C56" H 5300 7550 50  0000 L CNN
F 1 "270pF" H 5250 7450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 5588 7300 50  0001 C CNN
F 3 "~" H 5550 7450 50  0001 C CNN
	1    5550 7450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 7100 2950 7100
Connection ~ 2950 7100
Wire Wire Line
	3650 7100 3900 7100
Wire Wire Line
	4350 7100 4500 7100
Wire Wire Line
	4900 7100 5050 7100
Wire Wire Line
	5450 7100 5550 7100
Wire Wire Line
	5550 7100 5550 7300
Wire Wire Line
	5050 7300 5050 7100
Connection ~ 5050 7100
Wire Wire Line
	5050 7100 5150 7100
Wire Wire Line
	4500 7300 4500 7100
Connection ~ 4500 7100
Wire Wire Line
	4500 7100 4600 7100
Wire Wire Line
	3900 7300 3900 7100
Connection ~ 3900 7100
Wire Wire Line
	3900 7100 4050 7100
Wire Wire Line
	2950 7700 3900 7700
Wire Wire Line
	5550 7700 5550 7600
Wire Wire Line
	5050 7600 5050 7700
Connection ~ 5050 7700
Wire Wire Line
	5050 7700 5550 7700
Wire Wire Line
	4500 7600 4500 7700
Connection ~ 4500 7700
Wire Wire Line
	4500 7700 5050 7700
Wire Wire Line
	3900 7600 3900 7700
Connection ~ 3900 7700
Wire Wire Line
	3900 7700 4500 7700
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5F6DC86B
P 6350 6550
F 0 "J8" H 6322 6524 50  0000 R CNN
F 1 "Antenna" H 6322 6433 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6350 6550 50  0001 C CNN
F 3 "~" H 6350 6550 50  0001 C CNN
	1    6350 6550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F6DD487
P 6100 7550
F 0 "#PWR0113" H 6100 7300 50  0001 C CNN
F 1 "GND" H 6105 7377 50  0000 C CNN
F 2 "" H 6100 7550 50  0001 C CNN
F 3 "" H 6100 7550 50  0001 C CNN
	1    6100 7550
	1    0    0    -1  
$EndComp
Text GLabel 3750 6500 0    50   Input ~ 0
D
Wire Wire Line
	3750 6500 3900 6500
Wire Wire Line
	3900 6500 3900 7100
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5F709426
P 550 6700
F 0 "J9" H 658 6981 50  0000 C CNN
F 1 "xmit" H 658 6890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 550 6700 50  0001 C CNN
F 3 "~" H 550 6700 50  0001 C CNN
	1    550  6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6250 850  6250
Wire Wire Line
	850  6250 850  6600
Wire Wire Line
	850  6600 750  6600
Wire Wire Line
	750  6700 1050 6700
Wire Wire Line
	1050 6700 1050 6500
Wire Wire Line
	1050 6500 1350 6500
Connection ~ 1350 6500
Wire Wire Line
	750  6800 1300 6800
Wire Wire Line
	1300 6800 1300 7450
Connection ~ 1300 7450
Wire Wire Line
	6150 6550 5950 6550
Wire Wire Line
	5950 6550 5950 7100
Wire Wire Line
	5950 7100 5550 7100
Connection ~ 5550 7100
Wire Wire Line
	6100 6650 6150 6650
Wire Wire Line
	6100 6650 6100 7550
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FC4F682
P 1200 3450
F 0 "J1" H 1172 3424 50  0000 R CNN
F 1 "Tone" H 1172 3333 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1200 3450 50  0001 C CNN
F 3 "~" H 1200 3450 50  0001 C CNN
	1    1200 3450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FC50630
P 1700 3600
F 0 "#PWR0114" H 1700 3350 50  0001 C CNN
F 1 "GND" H 1705 3427 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3450 1700 3450
Wire Wire Line
	1700 3450 1700 3600
Wire Wire Line
	1400 3350 1950 3350
Wire Wire Line
	1950 3350 1950 2500
Wire Wire Line
	1950 2500 2350 2500
Wire Wire Line
	2350 2500 2350 2250
Connection ~ 2350 2250
$EndSCHEMATC
