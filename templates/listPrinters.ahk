printerlist =
loop,HKCU,Software\Microsoft\Windows NT\CurrentVersion\devices
{
    printerlist = %printerlist%%A_loopRegName%`n
}

STDOUT := FileOpen("*", "w")
STDOUT.Write(printerlist)