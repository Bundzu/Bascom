$regfile = "m8def.dat"                                      ' używamy timera i pokazujemy liczbę sekund na wyświetlaczu
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Portb.0
Config Lcd = 16 * 2

Dim Licznik As Integer
Dim Liczba As Integer
Cursor Off


Config Timer0 = Timer, Prescale = 64                        ' deklaracja timera jako czasomierza

On Timer0 Przerwanie_co_2ms
Enable Interrupts                                           ' włączenie przerwań po przepełnieniu timera
Enable Timer0
Timer0 = 6
Licznik = 0
Cls


Do
Upperline
Lcd Liczba
Loop
End

Przerwanie_co_2ms:                                          ' podprogram przerwania od przepełnienia timera0
 Counter0 = Counter0 + 6                                    
 Incr Licznik 'zwiêkszenie licznika
 If Licznik = 500 Then
Incr Liczba
Licznik = 0                                                 ' wyzeruj zmienną licznik
 End If
Return
