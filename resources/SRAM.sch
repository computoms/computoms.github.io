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
L Transistor_FET:PMOS_Thomas Q?
U 1 1 609DE5EF
P 3600 2050
F 0 "Q?" H 2400 -5325 50  0001 L CNN
F 1 "PMOS_Thomas" H 2400 -5400 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2400 -5475 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3600 2050 50  0001 L CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:PMOS_Thomas Q?
U 1 1 609DFE5A
P 4850 2050
F 0 "Q?" H 3650 -5325 50  0001 L CNN
F 1 "PMOS_Thomas" H 3650 -5400 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3650 -5475 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 4850 2050 50  0001 L CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E0C31
P 2650 2650
F 0 "Q?" H 1100 -4725 50  0001 L CNN
F 1 "NMOS_Thomas" H 1100 -4800 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1100 -4875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 2650 2650 50  0001 L CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E35EB
P 4850 3100
F 0 "Q?" H 3300 -4275 50  0001 L CNN
F 1 "NMOS_Thomas" H 3300 -4350 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3300 -4425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4850 3100 50  0001 L CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E41CD
P 5900 2600
F 0 "Q?" H 4350 -4775 50  0001 L CNN
F 1 "NMOS_Thomas" H 4350 -4850 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4350 -4925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5900 2600 50  0001 L CNN
	1    5900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3200 3700 3350
Wire Wire Line
	3700 3350 4050 3350
Wire Wire Line
	6000 2500 6000 2300
Wire Wire Line
	5800 1400 2550 1400
Wire Wire Line
	4950 1950 4950 1650
$Comp
L power:VDD #PWR?
U 1 1 60A15DC9
P 4250 1650
F 0 "#PWR?" H 4250 1500 50  0001 C CNN
F 1 "VDD" H 4265 1823 50  0000 C CNN
F 2 "" H 4250 1650 50  0001 C CNN
F 3 "" H 4250 1650 50  0001 C CNN
	1    4250 1650
	1    0    0    -1  
$EndComp
Connection ~ 4250 1650
Wire Wire Line
	4250 1650 4950 1650
Wire Wire Line
	4950 3200 4950 3700
Wire Wire Line
	4950 3700 4250 3700
Text Label 3950 1400 0    50   ~ 0
WL
Text GLabel 2550 2650 0    50   Input ~ 0
M5
Text GLabel 3500 2050 0    50   Input ~ 0
M2
Text GLabel 4800 1950 0    50   Input ~ 0
M4
Text GLabel 4800 3000 0    50   Input ~ 0
M3
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E3126
P 3600 3100
F 0 "Q?" H 2050 -4275 50  0001 L CNN
F 1 "NMOS_Thomas" H 2050 -4350 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 -4425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3600 3100 50  0001 L CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
Text GLabel 3550 3200 0    50   Input ~ 0
M1
Wire Wire Line
	3700 3000 3700 2900
$Comp
L power:VSS #PWR?
U 1 1 609A572C
P 4250 3700
F 0 "#PWR?" H 4250 3550 50  0001 C CNN
F 1 "VSS" H 4265 3873 50  0000 C CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Connection ~ 4250 3700
Wire Wire Line
	3700 1950 3700 1850
Wire Wire Line
	3700 1850 4050 1850
Wire Wire Line
	5800 1400 5800 2600
Wire Wire Line
	6000 2600 5800 2600
Wire Wire Line
	2550 1400 2550 2650
Wire Wire Line
	2750 2550 2750 2450
Wire Wire Line
	2750 2750 2750 3250
Wire Wire Line
	5800 1400 6600 1400
Connection ~ 5800 1400
Wire Wire Line
	2550 1400 1800 1400
Connection ~ 2550 1400
Wire Wire Line
	4950 1650 5500 1650
Connection ~ 4950 1650
Wire Wire Line
	4950 3700 5500 3700
Connection ~ 4950 3700
Wire Wire Line
	1900 3250 1900 2150
Wire Wire Line
	1900 3250 2750 3250
Wire Wire Line
	1900 3250 1900 3800
Connection ~ 1900 3250
Wire Wire Line
	6800 2300 6800 2100
Wire Wire Line
	6000 2300 6800 2300
Wire Wire Line
	6800 2300 6800 3750
Connection ~ 6800 2300
Wire Wire Line
	3250 1650 4250 1650
Wire Wire Line
	3700 2150 3700 2300
Wire Wire Line
	3700 2300 3250 2300
Wire Wire Line
	3250 2300 3250 1650
Wire Wire Line
	3700 2900 3250 2900
Wire Wire Line
	3250 2900 3250 3700
Wire Wire Line
	3250 3700 4250 3700
Wire Wire Line
	3250 1650 3050 1650
Connection ~ 3250 1650
Wire Wire Line
	3250 3700 3050 3700
Connection ~ 3250 3700
Text Label 1900 3800 0    50   ~ 0
BL-bar
Text Label 6800 3750 0    50   ~ 0
BL
Wire Wire Line
	6000 2700 6000 2800
Text Label 4050 2450 0    50   ~ 0
Q-bar
Wire Wire Line
	3500 2050 3500 2800
Wire Wire Line
	3500 2800 4950 2800
Connection ~ 3500 2800
Wire Wire Line
	3500 2800 3500 3100
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 4950 3000
Wire Wire Line
	4950 2150 4950 2800
Wire Wire Line
	4950 2800 6000 2800
Text Label 4950 2800 0    50   ~ 0
Q
Connection ~ 4050 2450
Wire Wire Line
	2750 2450 4050 2450
Wire Wire Line
	4750 3100 4550 3100
Wire Wire Line
	4550 2450 4550 3100
Wire Wire Line
	4050 2450 4550 2450
Connection ~ 4550 2450
Wire Wire Line
	4550 2050 4750 2050
Wire Wire Line
	4550 2050 4550 2450
Wire Wire Line
	4050 2450 4050 3350
Wire Wire Line
	4050 1850 4050 2450
Text GLabel 5800 2600 0    50   Input ~ 0
M6
$EndSCHEMATC
