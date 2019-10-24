


if WinActive("ahk_class Notepad") or WinActive("ahk_class" . ClassName)  ; "ahk_class" need not have a space after it.
    WinClose  ; Uses the last found window.
	
if WinExist("ahk_exe notepad.exe")
    WinActivate, ahk_exe notepad.exe
else
    Run, notepad.exe
	

SetTitleMatchMode RegEx
WinActivate ahk_exe i)\\notepad\.exe$  ; Match the name part of the full path.


GroupAdd, Explorer, ahk_class CabinetWClass

; Activate any window matching the above criteria
WinActivate, ahk_group Explorer



; Create the popup menu by adding some items to it.
Menu, MyMenu, Add, Notepad, MenuHandler
Menu, MyMenu, Add, Calc, MenuHandler
return



MenuHandler:
if (A_ThisMenuItem = "Notepad")
	Run Notepad.exe
else if (A_ThisMenuItem = "Calc")
	Run Calc.exe
return

#z::Menu, MyMenu, Show ; i.e. press the Win-Z hotkey to show the menu.

; On WIN+R Shows name of Control
#r::
	ControlGetFocus, out, A  ; A means the active window
	tooltip, Control is '%out%'
return

