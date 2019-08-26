Loop 3 
{ 
    MsgBox This window will be displayed three times. 
}

Loop %RunCount% 
{ 
    Run C:\Check Server Status.exe Sleep 60000 ; Wait 60 seconds.
}