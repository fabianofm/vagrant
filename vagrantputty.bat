@echo off
set PUTTYLOC="C:\Program Files (x86)\PuTTY\putty.exe"
setlocal enabledelayedexpansion
for /F "tokens=* delims=" %%i in ('vagrant ssh 2^>^&1') do @set VAGRANTSSHOUTPUT=!VAGRANTSSHOUTPUT! %%i
set HOST=!VAGRANTSSHOUTPUT:~265,9!
set PORT=!VAGRANTSSHOUTPUT:~281,4!
set USER=!VAGRANTSSHOUTPUT:~296,7!
set SSHKEY=!VAGRANTSSHOUTPUT:~317!.ppk
!PUTTYLOC! -l !USER! -P !PORT! -i !SSHKEY! !HOST!
endlocal