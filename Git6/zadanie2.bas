' Zadanie 2
' symulator otwierania drzwi automatycznych

$regfile = "m8def.dat"                                      
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Portb.0       ' wyświetlacz
Config Lcd = 16 * 2

Config Portd.2 = Input
Config Portd.3 = Input
Config Portd.4 = Input
Config Portd.5 = Input
Portd.2 = 1                                                 ' czujnik wewnetrzny
Portd.3 = 1                                                 ' czujnik zewnetrzny
Portd.4 = 1                                                 ' krancowki otwierania
Portd.5 = 1                                                 ' krancowki zamykania

Cursor Off

Do

If Pind.5 = 0 And Pind.3 = 1 And Pind.4 = 1 And Pind.2 = 1 Then
Lcd "Zamkniete"
Waitms 200
Cls
End If

If Pind.2 = 0 And Pind.4 = 1 Then
Lcd "Otwieranie"
Waitms 200
Cls
End If

If Pind.3 = 0 And Pind.4 = 1 Then
Lcd "Otwieranie"
Waitms 200
Cls
End If

If Pind.4 = 0 Then
Lcd "Otwarte"
Waitms 200
Cls
End If

If Pind.5 = 1 And Pind.3 = 1 And Pind.4 = 1 And Pind.2 = 1 Then
Lcd "Zamykanie"
Waitms 200
Cls
End If

If Pind.4 = 0 And Pind.2 = 0 Then
Lcd "Otwarte"
Waitms 200
Cls
End If

If Pind.4 = 0 And Pind.3 = 0 Then
Lcd "Otwarte"
Waitms 200
Cls
End If

Loop
End