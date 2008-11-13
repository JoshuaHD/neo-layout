togglesuspend:
  if A_IsSuspended {
    menu, tray, rename, %enable%, %disable%
    menu, tray, tip, %name%
    if (iconBenutzen)
      menu, tray, icon, %ResourceFolder%\neo_enabled.ico,,1
    suspend , off ; Schaltet Suspend aus -> NEO
  } else {
    menu, tray, rename, %disable%, %enable%
    menu, tray, tip, %name% : Deaktiviert
    if (iconBenutzen)
      menu, tray, icon, %ResourceFolder%\neo_disabled.ico,,1
    suspend , on  ; Schaltet Suspend ein -> QWERTZ
  }
return

help:
  Run, %A_WinDir%\hh mk:@MSITStore:autohotkey.chm
return

about:
  msgbox, 64, %name% � Ergonomische Tastaturbelegung, 
  (
  %name% 
  `nDas Neo-Layout ersetzt das �bliche deutsche 
  Tastaturlayout mit der Alternative Neo, 
  beschrieben auf http://neo-layout.org/. 
  `nDazu sind keine Administratorrechte n�tig. 
  `nWenn Autohotkey aktiviert ist, werden alle Tastendrucke 
  abgefangen und statt dessen eine �bersetzung weitergeschickt. 
  `nDies geschieht transparent f�r den Anwender, 
  es muss nichts installiert werden. 
  `nDie Zeichen�bersetzung kann leicht �ber das Icon im 
  Systemtray deaktiviert werden.  `n
  )
return

neo:
  run http://neo-layout.org/
return

autohotkey:
  run http://autohotkey.com/
return

open:
  ListLines ; shows the Autohotkey window
return

edit:
  edit
return

reload:
  Reload
return

hide:
  menu, tray, noicon
return

exitprogram:
  exitapp
return

