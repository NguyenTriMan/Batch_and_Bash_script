@ECHO OFF

setlocal enabledelayedexpansion

set str1=hello
set str2=

if %str1%==hello (
    echo %str1%
)
:: check empty string
if "%str2%"=="" (
    echo This string is empty
)

:: the length of string
@REM Set "_demo=some example string"
@REM Call :strlen _demo _length
@REM Echo String is %_length% characters long

@REM :strlen  StrVar  [RtnVar]
@REM   setlocal EnableDelayedExpansion
@REM   set "s=#!%~1!"
@REM   set "len=0"
@REM   for %%N in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
@REM     if "!s:~%%N,1!" neq "" (
@REM       set /a "len+=%%N"
@REM       set "s=!s:~%%N!"
@REM     )
@REM   )
@REM   endlocal&if "%~2" neq "" (set %~2=%len%) else echo %len%
@REM exit /b

set str=Hello World
ECHO %str% > temp\tempfile.txt
FOR %%? IN (temp\tempfile.txt) DO ( SET /A strlength=%%~z? - 2 )
echo %strlength%

:: print d (want to show the last 1 character of the string)
echo %str:~-1% 
:: print ello
echo %str:~1,5% 
:: print ello Worl
:: ~1,-1


set str3=Batch scripts is easy. It is really easy. 
echo %str3% 

@REM set str3=%str3:is =% 
@REM set str3=%str3:is=% 
@REM set str3=%str3:is =  %  --> 2 space 
@REM set str3=%str3:=% --> remove all space
@REM set str3=%str3:is=has% 
echo %str3% 