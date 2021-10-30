#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

I_Icon = keystroke.ico
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

;set tray icon
if A_IsCompiled
  Menu, Tray, Icon, %A_ScriptFullPath%, -159

^!#End::
	send {Media_Next}
return

^!#Home::
	send {Media_Prev}
return

; Mac bindings to make you feel home

!c:: ;Mac binding
	Send {Ctrl Down}c{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return


!v:: ;Mac binding
	Send {Ctrl Down}v{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!x:: ;Mac binding
	Send {Ctrl Down}x{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!z:: ;Mac binding
	Send {Ctrl Down}z{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!s:: ;Mac binding
	Send {Ctrl Down}s{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!b:: ;Mac binding
	Send {Ctrl Down}b{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!u:: ;Mac binding
	Send {Ctrl Down}u{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return

!i:: ;Mac binding
	Send {Ctrl Down}i{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return


!f:: ;Mac binding
	Send {Ctrl Down}f{Ctrl Up}
	TrayTip, Mac Binding used, You used a mac shortcut
	SetTimer, HideTrayTip, -1000
return


!`:: ; Next window
	WinGetClass, ActiveClass, A
	WinActivateBottom, ahk_class %ActiveClass%
return

; End Mac bindings

;#IfWinActive, ahk_exe thunderbird.exe
;^!#d::
;	FormatTime, TimeString,, LongDate
;	curcity := "Bangalore"
;	diaryentry := "Diary : " . TimeString . " : " . curcity
;	SendInput %diaryentry%
;return	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}