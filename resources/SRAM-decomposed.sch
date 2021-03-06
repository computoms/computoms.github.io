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
P 1650 4300
F 0 "Q?" H 450 -3075 50  0001 L CNN
F 1 "PMOS_Thomas" H 450 -3150 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 450 -3225 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 1650 4300 50  0001 L CNN
	1    1650 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:PMOS_Thomas Q?
U 1 1 609DFE5A
P 2900 4300
F 0 "Q?" H 1700 -3075 50  0001 L CNN
F 1 "PMOS_Thomas" H 1700 -3150 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1700 -3225 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 2900 4300 50  0001 L CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E0C31
P 1950 2000
F 0 "Q?" H 400 -5375 50  0001 L CNN
F 1 "NMOS_Thomas" H 400 -5450 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 400 -5525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 1950 2000 50  0001 L CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E35EB
P 2900 5350
F 0 "Q?" H 1350 -2025 50  0001 L CNN
F 1 "NMOS_Thomas" H 1350 -2100 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1350 -2175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 2900 5350 50  0001 L CNN
	1    2900 5350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E41CD
P 5200 1950
F 0 "Q?" H 3650 -5425 50  0001 L CNN
F 1 "NMOS_Thomas" H 3650 -5500 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3650 -5575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5200 1950 50  0001 L CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5450 1750 5600
Wire Wire Line
	1750 5600 2100 5600
Wire Wire Line
	5300 1850 5300 1650
Wire Wire Line
	5100 750  1850 750 
Wire Wire Line
	3000 4200 3000 3900
$Comp
L power:VDD #PWR?
U 1 1 60A15DC9
P 2300 3900
F 0 "#PWR?" H 2300 3750 50  0001 C CNN
F 1 "VDD" H 2315 4073 50  0000 C CNN
F 2 "" H 2300 3900 50  0001 C CNN
F 3 "" H 2300 3900 50  0001 C CNN
	1    2300 3900
	1    0    0    -1  
$EndComp
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 3000 3900
Wire Wire Line
	3000 5450 3000 5950
Wire Wire Line
	3000 5950 2300 5950
Text Label 3250 750  0    50   ~ 0
WL
Text GLabel 1850 2000 0    50   Input ~ 0
M5
Text GLabel 1550 4300 0    50   Input ~ 0
M2
Text GLabel 2850 4200 0    50   Input ~ 0
M4
Text GLabel 2850 5250 0    50   Input ~ 0
M3
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609E3126
P 1650 5350
F 0 "Q?" H 100 -2025 50  0001 L CNN
F 1 "NMOS_Thomas" H 100 -2100 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 100 -2175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 1650 5350 50  0001 L CNN
	1    1650 5350
	1    0    0    -1  
$EndComp
Text GLabel 1600 5450 0    50   Input ~ 0
M1
Wire Wire Line
	1750 5250 1750 5150
$Comp
L power:VSS #PWR?
U 1 1 609A572C
P 2300 5950
F 0 "#PWR?" H 2300 5800 50  0001 C CNN
F 1 "VSS" H 2315 6123 50  0000 C CNN
F 2 "" H 2300 5950 50  0001 C CNN
F 3 "" H 2300 5950 50  0001 C CNN
	1    2300 5950
	1    0    0    -1  
$EndComp
Connection ~ 2300 5950
Wire Wire Line
	1750 4200 1750 4100
Wire Wire Line
	1750 4100 2100 4100
Wire Wire Line
	5100 750  5100 1950
Wire Wire Line
	5300 1950 5100 1950
Wire Wire Line
	1850 750  1850 2000
Wire Wire Line
	2050 1900 2050 1800
Wire Wire Line
	2050 2100 2050 2600
Wire Wire Line
	5100 750  5900 750 
Connection ~ 5100 750 
Wire Wire Line
	1850 750  1100 750 
Connection ~ 1850 750 
Wire Wire Line
	3000 3900 3550 3900
Connection ~ 3000 3900
Wire Wire Line
	3000 5950 3550 5950
Connection ~ 3000 5950
Wire Wire Line
	1200 2600 1200 1500
Wire Wire Line
	1200 2600 2050 2600
Wire Wire Line
	1200 2600 1200 3150
Connection ~ 1200 2600
Wire Wire Line
	6100 1650 6100 1450
Wire Wire Line
	5300 1650 6100 1650
Wire Wire Line
	6100 1650 6100 3100
Connection ~ 6100 1650
Wire Wire Line
	1300 3900 2300 3900
Wire Wire Line
	1750 4400 1750 4550
Wire Wire Line
	1750 4550 1300 4550
Wire Wire Line
	1300 4550 1300 3900
Wire Wire Line
	1750 5150 1300 5150
Wire Wire Line
	1300 5150 1300 5950
Wire Wire Line
	1300 5950 2300 5950
Wire Wire Line
	1300 3900 1100 3900
Connection ~ 1300 3900
Wire Wire Line
	1300 5950 1100 5950
Connection ~ 1300 5950
Text Label 1200 3150 0    50   ~ 0
BL-bar
Text Label 6100 3100 0    50   ~ 0
BL
Wire Wire Line
	5300 2050 5300 2150
Text Label 2100 4700 0    50   ~ 0
Q-bar
Wire Wire Line
	1550 4300 1550 5050
Wire Wire Line
	1550 5050 3000 5050
Connection ~ 1550 5050
Wire Wire Line
	1550 5050 1550 5350
Connection ~ 3000 5050
Wire Wire Line
	3000 5050 3000 5250
Wire Wire Line
	3000 4400 3000 5050
Wire Wire Line
	3000 5050 4050 5050
Text Label 3000 5050 0    50   ~ 0
Q
Connection ~ 2100 4700
Wire Wire Line
	800  4700 2100 4700
Wire Wire Line
	2800 5350 2600 5350
Wire Wire Line
	2600 4700 2600 5350
Wire Wire Line
	2100 4700 2600 4700
Connection ~ 2600 4700
Wire Wire Line
	2600 4300 2800 4300
Wire Wire Line
	2600 4300 2600 4700
Wire Wire Line
	2100 4700 2100 5600
Wire Wire Line
	2100 4100 2100 4700
Wire Wire Line
	2050 1800 2650 1800
Wire Wire Line
	5300 2150 4200 2150
Text Label 2650 1800 0    50   ~ 0
Q-bar
Text Label 4200 2150 0    50   ~ 0
Q
$Comp
L Transistor_FET:PMOS_Thomas Q?
U 1 1 609DDCCB
P 5500 4250
F 0 "Q?" H 4300 -3125 50  0001 L CNN
F 1 "PMOS_Thomas" H 4300 -3200 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4300 -3275 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 5500 4250 50  0001 L CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:PMOS_Thomas Q?
U 1 1 609DDCD1
P 7700 4200
F 0 "Q?" H 6500 -3175 50  0001 L CNN
F 1 "PMOS_Thomas" H 6500 -3250 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 -3325 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 7700 4200 50  0001 L CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609DDCD7
P 7700 5250
F 0 "Q?" H 6150 -2125 50  0001 L CNN
F 1 "NMOS_Thomas" H 6150 -2200 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6150 -2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 7700 5250 50  0001 L CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5500 5950 5500
Text GLabel 5400 4250 0    50   Input ~ 0
M2
Text GLabel 7650 4100 0    50   Input ~ 0
M4
Text GLabel 7650 5150 0    50   Input ~ 0
M3
$Comp
L Transistor_FET:NMOS_Thomas Q?
U 1 1 609DDCED
P 5500 5300
F 0 "Q?" H 3950 -2075 50  0001 L CNN
F 1 "NMOS_Thomas" H 3950 -2150 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3950 -2225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5500 5300 50  0001 L CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
Text GLabel 5450 5400 0    50   Input ~ 0
M1
Wire Wire Line
	5600 5200 5600 5100
Wire Wire Line
	5600 4150 5600 4050
Wire Wire Line
	5600 4050 5950 4050
Text Label 6300 4750 0    50   ~ 0
Q-bar
Text Label 8050 4750 0    50   ~ 0
Q
Wire Wire Line
	7600 5250 7400 5250
Wire Wire Line
	7400 4200 7600 4200
Wire Wire Line
	5400 4250 5400 4750
$Comp
L power:VSS #PWR?
U 1 1 60A164B4
P 5800 5100
F 0 "#PWR?" H 5800 4950 50  0001 C CNN
F 1 "VSS" H 5815 5273 50  0000 C CNN
F 2 "" H 5800 5100 50  0001 C CNN
F 3 "" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 60A15ACB
P 5800 4500
F 0 "#PWR?" H 5800 4350 50  0001 C CNN
F 1 "VDD" H 5815 4673 50  0000 C CNN
F 2 "" H 5800 4500 50  0001 C CNN
F 3 "" H 5800 4500 50  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4350 5600 4500
Wire Wire Line
	5600 4500 5800 4500
Wire Wire Line
	5600 5100 5800 5100
Wire Wire Line
	5400 4750 5100 4750
Connection ~ 5400 4750
Wire Wire Line
	5400 4750 5400 5300
Text Label 5100 4750 0    50   ~ 0
Q
Wire Wire Line
	7800 4300 7800 4750
Wire Wire Line
	7400 4200 7400 4750
Connection ~ 7400 4750
Wire Wire Line
	7400 4750 7400 5250
Text Label 7100 4750 0    50   ~ 0
Q-bar
Wire Wire Line
	7100 4750 7400 4750
Text GLabel 6550 4750 2    50   Input ~ 0
M5
Text GLabel 8150 4750 2    50   Input ~ 0
M6
Wire Wire Line
	5950 4750 6550 4750
Wire Wire Line
	7800 4750 8150 4750
Wire Wire Line
	7800 4100 7800 3950
Wire Wire Line
	7800 5350 7800 5450
Wire Wire Line
	7800 5450 8050 5450
$Comp
L power:VDD #PWR?
U 1 1 60A4114B
P 7800 3950
F 0 "#PWR?" H 7800 3800 50  0001 C CNN
F 1 "VDD" H 7815 4123 50  0000 C CNN
F 2 "" H 7800 3950 50  0001 C CNN
F 3 "" H 7800 3950 50  0001 C CNN
	1    7800 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 60A4192F
P 8050 5450
F 0 "#PWR?" H 8050 5300 50  0001 C CNN
F 1 "VSS" H 8065 5623 50  0000 C CNN
F 2 "" H 8050 5450 50  0001 C CNN
F 3 "" H 8050 5450 50  0001 C CNN
	1    8050 5450
	1    0    0    -1  
$EndComp
Connection ~ 7800 4750
Wire Wire Line
	7800 4750 7800 5150
Wire Wire Line
	5950 4050 5950 4750
Wire Wire Line
	5600 5400 5600 5500
Wire Wire Line
	5950 5500 5950 4750
Connection ~ 5950 4750
Text Label 800  4700 2    50   ~ 0
Q-bar
Text Label 4050 5050 2    50   ~ 0
Q
Text GLabel 5100 1950 0    50   Input ~ 0
M6
$EndSCHEMATC
