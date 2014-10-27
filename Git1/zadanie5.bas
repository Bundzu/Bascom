' Zadanie 5
' zaświecanie LEDa z dwóch przycisków, drugi gasi, logika odwrotna

$regfile = "m8def.dat"
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portb.1 = Input
Portb.1 = 1
Config Portb.2 = Input
Portb.2 = 1
Config Portd.5 = Output


Do
If Pinb.1 = 0 And Pinb.2 = 1 Then Portd.5 = 1
If Pinb.2 = 0 Then Portd.5 = 0

Loop
End