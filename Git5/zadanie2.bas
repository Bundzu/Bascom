' Zadanie 2
' PWM + przycisk na porcie D0


$regfile = "m8def.dat"                                      
$crystal = 4000000                                     
$hwstack = 40                                           
$swstack = 16
$framesize = 32


Config Timer1 = Pwm , Pwm = 8 , Compare A Pwm = Clear Up , Compare B Pwm = Clear Down , Prescale = 1       ' timer jako PWM

Dim I As Integer
I = 0

Config Portd.0 = Input                                      ' przycisk
Portd.0 = 1

Do

If Pind.0 = 0 Then					' jeżeli przycisk jest wciśnięty

For I = 0 To 200 Step 5					' rozjaśniamy
Waitms 100
Pwm1a = I
Next I

End If

If Pind.0 = 1 Then
For I = 200 To 0 Step -5
Waitms 100
Pwm1a = I
Next I

End If

Loop
End