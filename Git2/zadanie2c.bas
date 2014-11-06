' Zadanie 2c
' XOR logiczne przy pomocy wbudowanych przycisków + deklaracja zmiennych

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
'Defbit A                                                    ' deklaracja bita (1 sposób)
Dim A As Bit                                                 ' deklaracja bita (2 sposób, wybierz jeden)
Dim B As Bit
Dim C As Bit

Do
 A = Pinb.1                                                 
 B = Pinb.2
 C = A Xor B						     ' operacja na zmiennych xor
 If C = 1 Then Portc.5 = 1 Else Portc.5 = 0		     ' jeżeli warunek został spełniony to zaświecamy LEDa


Loop
End
