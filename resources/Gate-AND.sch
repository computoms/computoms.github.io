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
L Transistor_FET:TP0610T Q?
U 1 1 609C4A6C
P 3000 2650
F 0 "Q?" H 1800 -4725 50  0001 L CNN
F 1 "TP0610T" H 1800 -4800 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1800 -4875 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3000 2650 50  0001 L CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 609C5BB1
P 3700 2650
F 0 "Q?" H 2500 -4725 50  0001 L CNN
F 1 "TP0610T" H 2500 -4800 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2500 -4875 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3700 2650 50  0001 L CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 609C745F
P 3350 2000
F 0 "Q?" H 1800 -5375 50  0001 L CNN
F 1 "BSS138" H 1800 -5450 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1800 -5525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3350 2000 50  0001 L CNN
	1    3350 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 609CA3D7
P 3350 1450
F 0 "Q?" H 1800 -5925 50  0001 L CNN
F 1 "BSS138" H 1800 -6000 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1800 -6075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3350 1450 50  0001 L CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1450 3200 1450
Wire Wire Line
	3250 2000 2750 2000
Wire Wire Line
	3450 1350 3450 1100
Wire Wire Line
	3450 1550 3450 1900
Wire Wire Line
	3450 2100 3450 2350
Wire Wire Line
	3100 2550 3100 2350
Wire Wire Line
	3100 2350 3450 2350
Connection ~ 3450 2350
Wire Wire Line
	3450 2350 3800 2350
Wire Wire Line
	3800 2550 3800 2350
Connection ~ 3800 2350
Wire Wire Line
	3800 2350 4150 2350
Wire Wire Line
	3800 2750 3800 2900
Wire Wire Line
	3100 2750 3100 2900
Wire Wire Line
	3100 2900 3450 2900
Wire Wire Line
	2900 2650 2750 2650
Wire Wire Line
	2750 2650 2750 2000
Wire Wire Line
	2750 2000 2600 2000
Connection ~ 2750 2000
Wire Wire Line
	3200 1450 3200 2650
Wire Wire Line
	3200 2650 3600 2650
Connection ~ 3200 1450
Wire Wire Line
	3200 1450 2750 1450
$Comp
L power:VSS #PWR?
U 1 1 609CFA87
P 3450 2900
F 0 "#PWR?" H 3450 2750 50  0001 C CNN
F 1 "VSS" H 3465 3073 50  0000 C CNN
F 2 "" H 3450 2900 50  0001 C CNN
F 3 "" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
Connection ~ 3450 2900
Wire Wire Line
	3450 2900 3800 2900
$Comp
L power:VDD #PWR?
U 1 1 609D10A7
P 3450 1100
F 0 "#PWR?" H 3450 950 50  0001 C CNN
F 1 "VDD" H 3465 1273 50  0000 C CNN
F 2 "" H 3450 1100 50  0001 C CNN
F 3 "" H 3450 1100 50  0001 C CNN
	1    3450 1100
	1    0    0    -1  
$EndComp
Text Label 4150 2350 0    50   ~ 0
Out
Text Label 2750 1450 0    50   ~ 0
B
Text Label 2600 2000 0    50   ~ 0
A
$EndSCHEMATC
