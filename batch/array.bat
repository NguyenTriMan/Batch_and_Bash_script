@ECHO OFF

setlocal enabledelayedexpansion

set arr[0]=hello
set arr[1]=my
set arr[2]=name

:: print array
@REM for /L %%i in (0,1,2) do (
@REM     echo !arr[%%i]!
@REM )

:: another way to create an array
@REM set list="hello man" my name
@REM for %%a in (%list%) do ( 
@REM    echo %%a 
@REM )

:: get lengths of an array
set /A length=0
:loop
if defined arr[%length%] (
    echo !arr[%length%]!
    @REM or: call echo %%arr[%length%]%% (not need enable delay)
    set /A length+=1
    goto :loop
)

echo The length of the array is %length%

:: Structure in array
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
FOR /L %%i IN (0 1 2) DO  (
   echo Name = !obj[%%i].Name!
   call echo Index = %%obj[%%i].ID%%
)