@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%MM%-%DD%-%YYYY%_%HH%-%Min%-%Sec%""


title Starting Up
mkdir logs


:checkfile
cls
IF EXIST "ParagonMenu.log" (
  goto:Startbackup
  ) ELSE (
  goto:Timeout
)

:startbackup
cls
mode con:cols=44 lines=2
echo.Backing up in background. Close when Done
title Backing Up Log files
tail.exe -f "ParagonMenu.log" >> logs\%fullstamp%_BACKUPLOG.txt



:timeout
mode con:cols=60 lines=2
title Restarted game? -- Waiting 5 seconds
Echo. Due to A Restart this script will now make a new file
timeout 5 >nul
goto:checkfile