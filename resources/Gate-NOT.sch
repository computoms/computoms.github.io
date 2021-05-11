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
L Transistor_FET:BSS138 Q?
U 1 1 609D40FA
P 5000 2800
F 0 "Q?" H 3450 -4575 50  0001 L CNN
F 1 "BSS138" H 3450 -4650 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 -4725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5000 2800 50  0001 L CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:TP0610T Q?
U 1 1 609D643D
P 5000 2350
F 0 "Q?" H 3800 -5025 50  0001 L CNN
F 1 "TP0610T" H 3800 -5100 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3800 -5175 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 5000 2350 50  0001 L CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2600 5500 2600
Wire Wire Line
	5100 2600 5100 2700
Wire Wire Line
	5100 2450 5100 2600
Connection ~ 5100 2600
Wire Wire Line
	4900 2350 4900 2600
Wire Wire Line
	4900 2600 4600 2600
Connection ~ 4900 2600
Wire Wire Line
	4900 2600 4900 2800
Wire Wire Line
	5100 2250 5100 2150
Wire Wire Line
	5100 2900 5100 3000
Wire Wire Line
	5100 3000 5250 3000
$Comp
L power:VDD #PWR?
U 1 1 609DA2EB
P 5100 2150
F 0 "#PWR?" H 5100 2000 50  0001 C CNN
F 1 "VDD" H 5115 2323 50  0000 C CNN
F 2 "" H 5100 2150 50  0001 C CNN
F 3 "" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 609DAB0B
P 5250 3000
F 0 "#PWR?" H 5250 2850 50  0001 C CNN
F 1 "VSS" H 5265 3173 50  0000 C CNN
F 2 "" H 5250 3000 50  0001 C CNN
F 3 "" H 5250 3000 50  0001 C CNN
	1    5250 3000
	1    0    0    -1  
$EndComp
Text Label 4600 2600 0    50   ~ 0
A
Text Label 5500 2600 0    50   ~ 0
Out
$EndSCHEMATC
