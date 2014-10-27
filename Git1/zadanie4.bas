' Zadanie 4 
' zaświecanie LEDa, jeden przycisk do włączenia a drugi do wyłączenia

$regfile = "m8def.dat"
$Crystal=4000000
$hwstack=40
$swstack=16
$framesize=32

Config Portd.5 = Output                                     
Config Portb.7 = Input
Config Portc.4 = Input


Do
If Pinb.7 = 1 And Pinc.4 = 0 Then Portd.5 = 1
If Pinc.4 = 1 Then Portd.5 = 0

Loop
End