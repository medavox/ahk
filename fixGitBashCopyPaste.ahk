; overrides git-bash's copy and paste shortcuts,
; to be the same as on linux terminal emulators

; thanks to https://stackoverflow.com/a/32713347

;#SingleInstance Force
SetTitleMatchMode, 1
;#installKeybdHook
#Persistent

#IfWinActive, MINGW64:
^+v:: SendInput {Insert} ; MsgBox, PASTE ;
^+c:: SendInput {^Insert} ; MsgBox, COPY ;

;#IfWinActive ; End the window-specific hotkeys
