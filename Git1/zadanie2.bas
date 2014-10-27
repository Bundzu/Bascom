' Zadanie 2
' świecenie LEDem przy trzymaniu naciśniętego przycisku

$regfile = "m8def.dat"
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portd.5 = Output                                   'wyjście
Config Portb.7 = Input

Do
If Pinb.7 = 1 Then Portd.5 = 1		' jeżeli jest naciśnięty przycisk to świeci LED
if pinb.7 = 0 then portd.5 = 0		

Loop
End