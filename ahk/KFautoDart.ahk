;;when h is pressed, middle click every 150ms
;;pause this on press of k
backspace::
loop
{
	Click Middle
	sleep, 150
}

k::
Pause Toggle
return