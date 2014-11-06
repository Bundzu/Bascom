' Zadanie 2b
' OR logiczne przy pomocy wbudowanych przycisków

$regfile = "m8def.dat"                                      
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portb.1 = Input
Config Portb.2 = Input
Portb.1 = 1
Portb.2 = 1
Config Portc.5 = Output

Do
If Pinb.1 = 0 Or Pinb.2 = 0 Then Toggle Portc.5             'OR

Loop
End
