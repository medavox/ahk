loop {
Process, Wait, dontstarve_steam.exe
SoundBeep, 300
Process, WaitClose, dontstarve_steam.exe
SoundBeep, 450
RunWait, C:\Program Files\Git\bin\bash.exe "C:\users\adam\Desktop\GameSaves\commit-push-all.sh Don't Starve Together"
}