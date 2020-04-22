;;turbofire left click when holding 'down/back' special mouse button
;;40ms is very fast, maybe consider increasing delay
SetMouseDelay, 50
loop
{
	if GetKeyState("Backspace")
	{
		Send b
	}
}
