' Zadanie 1:
' Włączenie i wyłączenie LEDa: tylko jeden przycisk

$regfile = "m8def.dat"                    
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portd.0 = Input
Portd.0 = 1
Config Portc.5 = Output


Do
If Pind.0 = 0 Then Toggle Portc.5

Loop
End
