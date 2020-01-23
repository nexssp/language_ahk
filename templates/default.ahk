; Nexss PROGRAMMER 2.0.0 - Auto Hot Key
; Default template for JSON Data
; SETUP

#NoEnv 
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir% 

(oHTML:=ComObjCreate("HTMLFile")).write("<!DOCTYPE html><html><head><meta http-equiv=""X-UA-Compatible"" content=""IE=edge""><meta charset=""utf-8"" /></head><body></body></html>")

; STDIN
STDIN := FileOpen("*", "r")
NexssStdin := STDIN.Read()
NexssStdout := oHTML.parentWindow.JSON.parse(NexssStdin)

; Modify Data
;NexssStdout.ahkOutput := "Hello from AHK! " . A_AhkVersion
NexssStdout.test := "test"

; STDOUT
NexssStdout := oHTML.parentWindow.JSON.stringify(NexssStdout)
STDOUT := FileOpen("*", "w")
STDOUT.Write(NexssStdout)
