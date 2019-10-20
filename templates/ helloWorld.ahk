; Nexss PROGRAMMER 2.0.0 - Auto Hot Key
; Default template for JSON Data
; SETUP
; TODO: fix utf-8 characters

#NoEnv 
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir% 
#Include ./3rdPartyLibraries/AutoHotkey-JSON/JSON.ahk
; STDIN
STDIN := FileOpen("*", "r")
NexssStdin := STDIN.Read()
NexssStdout := JSON.load(NexssStdin)

; Modify Data
NexssStdout.ahkOutput := "Hello from AHK! " . A_AhkVersion
; NexssStdout.test := "test"

; STDOUT
NexssStdout := JSON.Dump(NexssStdout)
STDOUT := FileOpen("*", "w")
STDOUT.Write(NexssStdout)
