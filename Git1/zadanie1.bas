' zadanie 1
' zmiana stanu wyjścia

$regfile = "m8def.dat"
$Crystal=4000000
$hwstack=40
$swstack = 16
$framesize=32

Config Portd.5 = Output                                     ' port d 5 jest wyjściem

Do                                                          ' petla
Portd.5 = 1                                                 ' włączamy port d 5
Toggle Portd.5                                              ' zmiana stanu portu (wyłączamy)
Loop                                                        ' koniec pętli
End