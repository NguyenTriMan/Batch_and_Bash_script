@ECHO OFF

echo %1

set message = Hello World 
echo %message%

set /A var1 = 5
set /A var2 = 10
set /A divide = %var1% / %var2%
echo %divide%

echo %~dp0

SETLOCAL
set var = 12
set /A var = %var% + 5
echo %var%
ENDLOCAL

@REM now "var" variable is not define
echo %var%

