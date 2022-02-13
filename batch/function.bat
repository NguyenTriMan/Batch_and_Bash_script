@ECHO OFF


@REM echo function %ERRORLEVEL%
@REM ping google.com.abc
@REM echo function %ERRORLEVEL%

@REM exit /b %ERRORLEVEL%

:: new file .bat
:: call function.bat 
:: echo %ERRORLEVEL%

:: function with return value
CALL :SetValue value1,value2
echo %value1%
echo %value2%
@REM goto :eof
exit /B 0

@REM set str=Outer
@REM echo %str%
@REM CALL :SetValue1 str
@REM echo %str%
@REM EXIT /B %ERRORLEVEL%

:SetValue
echo function call firstly
set "%1=5"
set %2=10
EXIT /B 0

@REM :SetValue1
@REM SETLOCAL
@REM set str=Inner
@REM set "%~1=%str%"
@REM ENDLOCAL
@REM EXIT /B 0

