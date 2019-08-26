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

; IfWinActive: Checks if the specified window is currently active.
; WinWaitActive: Waits for the specified window to become active (typically used after sending a window-activating keystroke such as pressing Control-F for "Find").
; WinClose: Closes the specified window.
; WinMove: Moves and/or resizes the specified window.
; WinMinimize, WinMaximize, WinRestore: Minimizes, maximizes, or restores the specified window, respectively.