@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index = index + 1"
   goto :while
)
@REM exit /B 0

@REM set /A index=0
@REM set /A count=5

@REM :loop
@REM if %index% LEQ %count% (
@REM     echo %index%
@REM     set /A index+=1
@REM     goto :loop
@REM )
@REM goto :eof

FOR %%F IN (1 2 3 4 5) DO (
    echo %%F
)
