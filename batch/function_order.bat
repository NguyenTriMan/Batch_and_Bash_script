@echo off

call function.bat 
echo %ERRORLEVEL%

:loop
    call :1
    call :2
    call :3
@REM exit /B 
goto :eof
@REM dont have exit it will be excute loop once again 

:1
    echo 1
goto :eof

:2
    echo 2
goto :eof

:3
    echo 3
goto :eof

