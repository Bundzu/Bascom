' Zadanie 3
' inaczej napisane zaświecanie LEDa przy pomocy przycisku

$regfile = "m8def.dat"
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portd.5 = Output                                     
Config Portb.7 = Input

Do
If Pinb.7 = 1 Then Portd.5 = 1 Else Portd.5 = 0

Loop
End