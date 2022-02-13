@ECHO OFF
setlocal enabledelayedexpansion

:: check value of arguments
if "%1"=="1" echo equal 1
if %1==1 echo equal 1
if %1%==1 echo equal 1

if "%2"=="1" ( 
    echo equal 1
) else if %2==2 ( 
    echo equal 2 
) else ( 
    echo unknow 
)

:: if have space before equal the name of variable is "str1 " so check if defined have not correct
:: when set variable and still use same cmd window --> when delete variable still exists --> so close the terminal before run script

@REM SET str1=String
if defined str1 ( 
    echo "Variable str1 is defined"
) else (
    echo "Variable str1 is not defined"
)
if defined str2 (
    echo "Variable str2 is defined"
)
if not defined str2 (
    echo "Variable str2 is not defined"
)

:: check file exists or not
if exist C:\Users\Administrator\Desktop\bat_bash\README.md (
    echo "file README.md exist"
) else (
    echo "file README.md not exist"
)
if exist C:\Users\Administrator\Desktop\bat_bash\README.txt (
    echo "file README.txt exist"
) else (
    echo "file README.txt not exist"
)


