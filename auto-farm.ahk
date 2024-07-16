#Persistent
SetKeyDelay, 25 ; Set the key delay to 25 milliseconds

; Initialize a variable to track the pause state
Paused := false

F7::
    if (Paused) {
        ; If paused, resume the process
        Paused := false
        SetTimer, SendKeys, On
    } else {
        ; If not paused, pause the process
        Paused := true
        SetTimer, SendKeys, Off
    }
return

SendKeys:
    ; Keep the left mouse button pressed
    Click down

    ; Your existing key sequence (D and A keys)
    Send, {d down}
    Sleep, 400
    Send, {d up}
    Send, {a down}
    Sleep, 400
    Send, {a up}

    ; Release the left mouse button
    Click up
return
