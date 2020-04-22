;;Minecraft Helper Script: holds down various keys for you
Sendmode Input

;;tap R to toggle auto-run
r::
If GetKeyState("w") 
   Send {w Up} 
else {
   Send {w Down}
   }
return

;;c to toggle auto-crouch
c::
send {Shift Down}
return

;;f (fast) for auto-sprint
f::
If GetKeyState("w") 
   Send {w Up} 
else {
   Send {w Down}
   sleep 80
   Send {w Up}
   sleep 40
   Send {w Down}
   }
return

;;v to auto-jump (handy when swimming, or sprinting across ice)
v::
If GetKeyState("Space") 
   Send {Space Up} 
else {
   Send {Space Down}
   }
return

;;n to hold left mouse button
n::
If GetKeyState("LButton") 
	Send {Click Up}
else {
	Send {Click Down}
	}
return

;;turn keys on and off with numpad0
numpad0::
Suspend, Toggle
return