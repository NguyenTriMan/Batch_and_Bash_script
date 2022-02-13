@echo off
@REM setlocal enabledelayedexpansion

@REM set /A count=0

for /F "tokens=*" %%i in (temp\dir.txt) do (
    set /A count+=1
    set var[!count!]=%%i
    call echo %%var[!count!]%%
)
call echo %count%