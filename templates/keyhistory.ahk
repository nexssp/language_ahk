; #IfWinActive Bez tytułu - Notatnik
; #Space::
; MsgBox, You pressed WIN+SPACE in Notepad.
; return
SoundBeep, 1750, 500  ; Play a higher pitch for half a second.


KeyHistory ; Display the history info in a window.

MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%. 