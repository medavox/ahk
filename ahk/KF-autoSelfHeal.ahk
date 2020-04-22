;;when h is pressed, middle click every 150ms
;;pause this on press of k
BackSpace::
loop
{
	Send {q}
	sleep, 150
}

k::
Pause Toggle
return