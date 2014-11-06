' Zadanie 3
' inne połączenie przycisku do 5V

$regfile = "m8def.dat"                                    
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portd.0 = Input
Portd.0 = 0
Config Portc.5 = Output
Portc.5 = 0

Do

 If Pind.0 = 1 Then Portc.5 = 1 Else Portc.5 = 0

Loop
End
