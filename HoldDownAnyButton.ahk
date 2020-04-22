;Pressing Numpad 0 holds down any other keyboard or mouse buttons that are currently pressed
;Numpad minus cancels all held buttons
keyList := Array(q, w, e, r, t, y, u, i, o, p, a, s, d, f, g, h, j, k, l, z, x, c, v, b, n, m, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, CapsLock, Space, Tab, Esc, Backspace, Delete, Insert, Home, End, PgUp, PgDn, Up, Down, Left, Right, Numpad0, Numpad1, Numpad2, Numpad3, Numpad4, Numpad5, Numpad6, Numpad7, Numpad8, Numpad9, NumpadDot, NumpadDiv, NumpadMult, NumpadAdd, NumpadSub, NumpadEnter, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, LWin, RWin, Ctrl, Alt, Shift, LButton, RButton, MButton)

;FileEncoding, UTF-8
pausedKeys := Array()

*Numpad0::
    For kej in keyList 
    {
      if GetKeyState("vk" . kej)
      {
        key2pause := GetKeyName("vk" . kej)
        ;FileAppend % GetKeyName("vk" . kej) . "`n", prestKiz.txt
        Hotkey, % key2pause . " up", doNowt, On
        pausedKeys.push(key2pause)
      }
    }
Return

*NumpadSub::
  while(pausedKeys.Length() > 0)
  {
    porzd := pausedKeys.Pop()
    ;FileAppend % porzd . "`n", pausedKeys.txt
    gelch := "{" . porzd . " up}"
    FileAppend % gelch . "`n", pausedKeys.txt
    Hotkey, % porzd . " up", doNowt, Off
    Send %gelch%
  }

doNowt:
  Return