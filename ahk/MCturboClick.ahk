;;turbofire left click when holding Ctrl,
;;turbofire right click when holding Alt
;;5ms seems to be as fast as minecraft can handle mouseclicks without lagging
SetMouseDelay, 5
loop
{
	capson = false
	if GetKeyState("Ctrl")
	{
		Click
	}
	else if GetKeyState("Alt")
	{
		Click right
	}
}
