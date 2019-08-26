; Win+f run firefox
#f::Run Firefox
; Win+4 run document
#4::Run C:\Documents and Settings\mapoart\My Documents\somedoc.txt  
; Quick Searches
#g:: Send, ^c Run, http://www.google.com/search?q=%Clipboard% Return
#w:: Send, ^c Run, http://en.wikipedia.org/wiki/Special:Search?search=%Clipboard% Return
; WIN+n will lounch notepad
#n::Run Notepad
; CTRL + ALT + C
^!c::Run calc.exe 
; To run and wait for 
RunWait Notepad 
MsgBox The user has finished (Notepad has been closed).
;
IfWinExist Untitled - Notepad
{ 
    WinActivate
}
else
{ 
    Run Notepad
    WinWait Untitled - Notepad
    WinActivate
}