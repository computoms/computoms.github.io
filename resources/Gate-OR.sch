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
Wire Wire Line
	4050 2150 4100 2150
Wire Wire Line
	5200 1800 4050 1800
Wire Wire Line
	4050 1800 4050 1850
Wire Wire Line
	5200 1800 5200 2000
Connection ~ 4050 1850
Wire Wire Line
	4050 1850 4050 2150
Wire Wire Line
	4050 1850 3500 1850
Wire Wire Line
	3650 1250 3650 2350
Connection ~ 3650 1250
Wire Wire Line
	3650 1250 2900 1250
Wire Wire Line
	3050 1650 3050 2400
Connection ~ 3050 1650
Wire Wire Line
	3050 1650 2900 1650
Connection ~ 5500 1050
Wire Wire Line
	5500 1050 5800 1050
Wire Wire Line
	4250 3250 4250 3300
Wire Wire Line
	5500 1800 5800 1800
$Comp
L power:VDD #PWR?
U 1 1 6098D8B3
P 2800 1050
F 0 "#PWR?" H 2800 900 50  0001 C CNN
F 1 "VDD" H 2815 1223 50  0000 C CNN
F 2 "" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0001 C CNN
	1    2800 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 6098EA93
P 2850 2600
F 0 "#PWR?" H 2850 2450 50  0001 C CNN
F 1 "VSS" H 2865 2773 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 6099CC5B
P 3400 2400
F 0 "Q?" H 1850 -4975 50  0001 L CNN
F 1 "BSS138" H 1850 -5050 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 -5125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3400 2400 50  0001 L CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2600 3500 2600
Wire Wire Line
	3050 2400 3300 2400
Wire Wire Line
	3500 1850 3500 2300
Wire Wire Line
	3500 2500 3500 2600
Connection ~ 3500 2600
Wire Wire Line
	3500 2600 4100 2600
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 609AB0ED
P 4000 2350
F 0 "Q?" H 2450 -5025 50  0001 L CNN
F 1 "BSS138" H 2450 -5100 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2450 -5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4000 2350 50  0001 L CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 609AD803
P 5400 2000
F 0 "Q?" H 3850 -5375 50  0001 L CNN
F 1 "BSS138" H 3850 -5450 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3850 -5525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5400 2000 50  0001 L CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2350 3900 2350
Wire Wire Line
	4100 2150 4100 2250
Wire Wire Line
	4100 2450 4100 2600
Connection ~ 4100 2600
Wire Wire Line
	4100 2600 5500 2600
Wire Wire Line
	5500 2100 5500 2600
Connection ~ 5500 2600
Wire Wire Line
	5500 2600 5800 2600
Wire Wire Line
	5200 2000 5300 2000
Wire Wire Line
	5500 1800 5500 1900
Wire Wire Line
	2800 1050 4050 1050
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 609B6C34
P 3950 1250
F 0 "Q?" H 2750 -6125 50  0001 L CNN
F 1 "TP0610T" H 2750 -6200 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2750 -6275 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3950 1250 50  0001 L CNN
	1    3950 1250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 609BAF6E
P 3950 1650
F 0 "Q?" H 2750 -5725 50  0001 L CNN
F 1 "TP0610T" H 2750 -5800 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2750 -5875 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3950 1650 50  0001 L CNN
	1    3950 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 609BC500
P 5400 1550
F 0 "Q?" H 4200 -5825 50  0001 L CNN
F 1 "TP0610T" H 4200 -5900 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 -5975 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 5400 1550 50  0001 L CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1250 3850 1250
Wire Wire Line
	3050 1650 3850 1650
Wire Wire Line
	4050 1150 4050 1050
Connection ~ 4050 1050
Wire Wire Line
	4050 1050 5500 1050
Wire Wire Line
	4050 1350 4050 1550
Wire Wire Line
	4050 1750 4050 1800
Connection ~ 4050 1800
Wire Wire Line
	5200 1800 5200 1550
Wire Wire Line
	5200 1550 5300 1550
Connection ~ 5200 1800
Wire Wire Line
	5500 1050 5500 1450
Wire Wire Line
	5500 1650 5500 1800
Connection ~ 5500 1800
Text Label 5800 1800 0    50   ~ 0
Out
Text Label 2900 1250 0    50   ~ 0
A
Text Label 2900 1650 0    50   ~ 0
B
$EndSCHEMATC
