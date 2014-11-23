$regfile = "m8def.dat"                                      ' krecimy potencjometrem i odczytujemy wartość na wyświetlaczu
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Portb.0  ' wyświetlacz
Config Lcd = 16 * 2


Config Adc = Single , Prescaler = Auto , Reference = Internal       ' ustawienie wejścia analogowego
Start Adc

Dim W As Word
Dim A As Single

Cursor Off

Do
W = Getadc(5)
A = W * 0.0049                                              ' wartości w woltach
Lcd Fusing(A , "#.###")                                     ' zaokrąglenie wartości do 3 miejsc po przecinku
Waitms 100
Cls

Loop
End
