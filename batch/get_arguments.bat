@ECHO OFF 

@REM :Input
@REM IF "%1"=="" GOTO :completed 
@REM FOR %%F IN (%1) DO (
@REM     echo %%F 
@REM )
@REM SHIFT 
@REM GOTO :Input
@REM :completed

:Input
if "%1"=="" goto :completed
if %1==-hw (
    echo hw is set %2
    set hw=%~2
)
if %1==--cuda (
    echo cuda is set %2
    set cuda=%~2
    echo %~2
)
:: shift --> move to next argument input
shift
goto :Input

:completed

:: get_arguments.bat --cuda "enable" -hw 1R1V 
:: --> output  cuda is set "enable"
::             enable
::             hw is set 1R1V