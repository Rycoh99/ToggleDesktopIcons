#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

^+i::
{
	Send, #r
	Wait:
	IfWinExist, Run
	{
		WinActivate, Run
		Send #d
		Sleep, 100
		Send, {APPSKEY}
		Sleep, 10
		Send, v
		Sleep, 10
		Send, {Enter}
		Sleep, 10
		Send, d
		WinClose, Run
		Return
	}
	Goto, Wait
}