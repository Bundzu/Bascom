' Zadanie 1b
' Dodatkowe funkcje: wyświetlenia kurczaka który wygląda jak ryba

$regfile = "m8def.dat"                                      
$crystal = 4000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Lcdpin = Pin , Rs = Portc.0 , E = Portc.1 , Db4 = Portc.2 , Db5 = Portc.3 , Db6 = Portc.4 , Db7 = Postc.5

Config Lcd = 16 * 2



Deflcdchar 1 , 4 , 14 , 26 , 15 , 15 , 14 , 4 , 14          ' definiujemy kurczaka, można zdefiniować do 8 różnych kurczaków

Do
Cursor Off

Cls                                                         ' wyświetlamy kurczaka
Lcd Chr(1)
Wait 1
Cls                                                         
Lcd " " ; Chr(1)
Wait 1
Cls
Lowerline
Lcd Chr(1)
Wait 1
Cls
Lowerline
Lcd " "; Chr(1)
Wait 1

Loop
End
