' Zadanie 2a
' AND logiczny (2 wbudowane przyciski)

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
'If Pinb.1 = 0 AND Pinb.2 = 0 Then Portc.5 = 1    ' jeżeli naciśniemy oba to zaświecimy LEDem    

Loop
End
