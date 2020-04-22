loop {
Process, Wait, OxygenNotIncluded.exe
SoundBeep, 300
Process, WaitClose, OxygenNotIncluded.exe
SoundBeep, 450
RunWait, C:\Program Files\Git\bin\bash.exe "C:\users\adam\Desktop\GameSaves\commit-push-all.sh"
}