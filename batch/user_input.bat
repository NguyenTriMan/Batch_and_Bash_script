@echo off

set /P Input=Enter yes or no (y/n): 
if /i %Input%==y (
    echo Yes
) else if /i %Input%==n (
    echo No
) else (
    echo Nothing
)
@REM If /I %Input%==y ( 
@REM     call :yes
@REM     exit /B 0
@REM ) else (
@REM     call :no
@REM     exit /B 0
@REM )

@REM :yes
@REM     echo yes
@REM     exit /b 0
@REM :no
@REM     echo no
@REM     exit /b 0