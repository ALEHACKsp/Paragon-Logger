@echo off
:startingup
title Starting Up

mode con:cols=40 lines=10
color 0a
cls 
echo.            
Echo.    [1] Run With Backup
Echo.    [2] Just Run
Echo.    [3] Cleanup Log folder
Echo.    [4] Readme
ECHO.
choice /C:12345 /N /M ".Enter Your Choice [1,2,3,8] : "

if errorlevel 4 goto:exit
if errorlevel 4 goto:readme
if errorlevel 3 goto:cleanup
if errorlevel 2 set lvl=1 && goto:run
if errorlevel 1 set lvl=2 && goto:run

:Run
cls
IF EXIST "WardensMenu.log" (
  goto:%lvl%
  ) ELSE (
  goto:Timeout
)


:2
start WLBS
goto:1
:1
cls
mode con:cols=100 lines=50
title Wardens Log
tail -f "WardensMenu.log"
set lvl=1
goto:timeout


:timeout
title File Not found -- Waiting 5 seconds
Echo. Waiting for file (make sure WardensMenu.log is present)
echo. And that you are running this script In the GTA DIRECTORY
timeout 5 >nul
goto:run



:cleanup
echo.not a finished feature yet
pause
goto:Startingup

:readme
mode con:cols=80 lines=10
cls
echo.Thanks For Using this Script I wrote
echo.
echo.Options:
echo.1 - Launch Logger With the backup script
echo.2 - Launch Logger Without Backing It up
echo.3 - Clean files of lower then 5KB size 
echo.(logger will sometimes create these files if run before starting GTA
echo.4 - Opens this thing :)
pause > nul
goto:startingup


:exit