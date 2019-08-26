Set oWS = CreateObject("WScript.Shell")
sPath = chr(34) & "C:\System\AHK\C:\Temp\Start.ahk" & Chr(34)
errResult = oWS.Run(sPath,,False)