:: Anoying BS Part 1
:: By LONG
@echo off 
title Windows Console Host
timeout 30
::get \ make working dir 
set Path1=%userprofile%\documents\"Windows Sound Host" 
cd \
cd %userprofile%\documents
if not exist %userprofile%\documents\"Windows Sound Host" ( 
    mkdir "Windows Sound Host"
)
cd \ 
set Media=c:\windows\Media
cd %media%
setlocal enabledelayedexpansion

set filecount=0

::file name array 
pushd "%media%"
for %%f in (*.wav) do (
    set /a filecount+=1
    set "file!filecount!=%%f"
)
popd
:MAIN
::rng for delay
SET /a "rnum= (%RANDOM% %% 300)+10"

::rng for file pick 
set /a "randf=(%RANDOM% %% filecount)+1"

::pick random file name from array
for /F "tokens=*" %%a in ("!file%randf%!") do set "idp=%%a"
 
timeout %rnum%
cd %Path1%
echo %DATE% + %TIME% + %idp% >> "Sounds.log"
:: create vbscrip file to run Wmplayer.exe hidden wsing vbscript
::Jank ass bullshit 
echo Dim oPlayer >> osp.vbs
echo Set oPlayer = CreateObject("WMPlayer.OCX") >> osp.vbs
echo oPlayer.URL = "C:\windows\media\%idp%" >> osp.vbs
echo oPlayer.settings.volume = 100 >> osp.vbs
echo oPlayer.controls.play >> osp.vbs
echo WScript.Sleep 10000 >> osp.vbs
echo oPlayer.close >> osp.vbs
echo Set oPlayer = Nothing >> osp.vbs

start osp.vbs 
timeout 30
del osp.vbs

GOTO MAIN

:: Fix later 

:end
pause
exit


:::endifbroken
::start rs.bat
::echo Some-ting wong
::pause 
::exit 