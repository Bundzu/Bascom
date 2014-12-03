' Zadanie 1
' rozjaśnianie i przyciemnianie LEDa: PWM
' pin PB1

$regfile = "m8def.dat"                                     
$crystal = 4000000                                         
$hwstack = 40
$swstack = 16
$framesize = 32


Config Timer1 = Pwm , Pwm = 8 , Compare A Pwm = Clear Up , Compare B Pwm = Clear Down , Prescale = 1       ' timer jako PWM

Dim I As Integer
I = 0

Do

For I = 0 To 200 Step 5		' rozjaśnianie
Waitms 100
Pwm1a = I
Next I

For I = 200 To 0 Step -5
Waitms 100
Pwm1a = I
Next I

Loop
End