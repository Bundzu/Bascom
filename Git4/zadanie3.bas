$regfile = "m8def.dat"                                      
$crystal = 4000000                                          ' zegar(godziny i minuty)
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Portb.0
Config Lcd = 16 * 2

Dim Licznik As Integer
Dim S As Integer                                            ' sekundy
Dim M As Integer                                            ' minuty
Dim H As Integer                                            ' sekundy
Cursor Off

Config Timer0 = Timer, Prescale = 64                        ' deklaracja timera jako czasomierza

On Timer0 Przerwanie_co_2ms
Enable Interrupts
Enable Timer0
Timer0 = 6
Licznik = 0
H = 9
M = 24
Cls

Do
Upperline
Lcd H
Lcd ":"
Lcd M
Lcd ":"
Lcd S
Loop
End

Przerwanie_co_2ms:                                          ' podprogram przerwania od przepełnienia timera0
 Counter0 = Counter0 + 6                                    ' ustawienie początkowej wartości timera0 
 Incr Licznik 
 If Licznik = 500 Then
Incr S
If S = 60 Then
   Incr M
      If M = 60 Then
      Incr H
         If H = 24 Then
            H = 0
            End If
      Cls
      End If
   S = 0
   Cls
End If
Licznik = 0                                                 ' wyzeruj zmienną licznik
 End If
Return
