' Zadanie 1
' pomiar temperatury przez MCP9700 i wyświetlanie na ekranie


$regfile = "m8def.dat"                                      
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Portb.0       ' wyświetlacz
Config Lcd = 16 * 2
Deflcdchar 1 , 12 , 18 , 18 , 12 , 32 , 32 , 32 , 32       	    ' znak stopnia

Config Adc = Single , Prescaler = Auto , Reference = Internal       ' ustawienie wejścia analogowego
Start Adc

Dim O As Word
Dim A As Single
Dim B As Single

Cursor Off

Do
O = Getadc(5)						    ' przeliczenia:
B = O * 0.0048828125                                        ' wynik z 5/1024
B = B - 0.5                                                 
B = B / 0.01

Lcd Fusing(b , "#.##")					    ' skracamy do 2 liczb po przecinku

Lcd Chr(1)						    ' znak stopnia
Lcd "C"

Waitms 500
Cls

Loop
End