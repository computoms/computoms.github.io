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
	3400 2000 3400 1850
Wire Wire Line
	3400 1850 3950 1850
Wire Wire Line
	3400 2200 3400 2350
Wire Wire Line
	3950 2250 3950 2350
$Comp
L power:VSS #PWR?
U 1 1 60A1E0A0
P 4300 2350
F 0 "#PWR?" H 4300 2200 50  0001 C CNN
F 1 "VSS" H 4315 2523 50  0000 C CNN
F 2 "" H 4300 2350 50  0001 C CNN
F 3 "" H 4300 2350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2350 4300 2350
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 60A19900
P 3300 2100
F 0 "Q?" H 1750 -5275 50  0001 L CNN
F 1 "NMOS_Thomas" H 1750 -5350 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 -5425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3300 2100 50  0001 L CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2100 2900 2100
Text Label 2900 2100 0    50   ~ 0
Address
Wire Wire Line
	3400 2350 2900 2350
Text Label 2900 2350 0    50   ~ 0
Bit
$Comp
L Device:C C?
U 1 1 60A2CB2E
P 3950 2100
F 0 "C?" H 4065 2146 50  0000 L CNN
F 1 "C" H 4065 2055 50  0000 L CNN
F 2 "" H 3988 1950 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1850 3950 1950
$EndSCHEMATC
