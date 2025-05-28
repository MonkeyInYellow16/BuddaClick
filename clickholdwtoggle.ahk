#NoEnv
#SingleInstance Force
SendMode Input
SetBatchLines -1

toggle := false

'::  ; Press ' (apostrophe) to toggle autoclicker on/off
    toggle := !toggle
    if (toggle)
        ToolTip, AutoClicker: ON
    else
        ToolTip, AutoClicker: OFF
    SetTimer, RemoveToolTip, -1000
return

*~LButton::
    While GetKeyState("LButton", "P") {
        if (!toggle)
            break
        Click
        Random, randDelay, 50, 100
        Sleep, randDelay
    }
return

RemoveToolTip:
    ToolTip
return
