Sendmode Input
;;tap numpad plus to toggle auto-drive of rovers
NumpadAdd::
If GetKeyState("w") 
   Send {w Up} 
else {
   Send {w Down}
   }
return
