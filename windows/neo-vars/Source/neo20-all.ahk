; Change working dir
#Include %a_scriptdir%\..

; Revision Information (don't moun)
#Include *i %a_scriptdir%\_subwcrev1.ahk
#Include *i %a_scriptdir%\_subwcrev2.ahk

; die Compose-Definitionen
#Include *i %a_scriptdir%\en_us.ahk
#Include *i %a_scriptdir%\neocomp.ahk
#Include %a_scriptdir%\neovarscomp.ahk

; Hier liegt die Tastaturbelegung
#Include %a_scriptdir%\keydefinitions.ahk

; Shortcuts, um die Zeichen wieder sauber zur Applikation bringen zu k�nnen
#Include %a_scriptdir%\shortcuts.ahk

; Good-old AHK-Skripts, enthalten die ersten Key-Hooks f�r Mod-Tasten
; Achtung: Hinter dem ersten Keyboard-Hook werden keine globalen Variablen
; mehr gesetzt!
#Include %a_scriptdir%\recycle.ahk

; Normale Keyboard-Hooks
#Include %a_scriptdir%\keyhooks.ahk

; Das Herz von neo20.ahk: die Tasten- und Zeichen-Behandlungsroutinen
#Include %a_scriptdir%\varsfunctions.ahk
