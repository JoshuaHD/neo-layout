; Wir m�ssen F24 nicht hooken, aber bei einem Restart hat AHK den Bug,
; dass manchmal der erste Hook ausgef�hrt wird, als w�re diese Taste
; gedr�ckt worden. Da F24 auf den wenigsten Tastaturen vorkommt und daher f�r
; NEO uninteressant ist, kehren wir einfach wieder zur�ck.
~F24::return

+pause::
Suspend, Permit
  Traytogglesuspend()
return

allstarhook:
  AllStar(A_ThisHotkey)
return
