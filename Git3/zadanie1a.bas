' Zadanie 1a 
' podłączenie wyświetlacza

$regfile = "m8def.dat"                                      
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Postc.5

Config Lcd = 16 * 2

Do

Cls                                                         ' odświerzenie wyświetlacza 
Lcd "Install"                                               ' wypisanie tekstu
Lowerline                                                   ' linia poniżej
Lcd "Gentoo"
Wait 3                                                      ' czekamy 3 sekundy

Cls                                                         ' następny napis:
Lcd "       XD"
Lowerline
Lcd " XD          XD "
Wait 3
Cursor Off                                                  ' wyłączenie  kursora


Loop
End

