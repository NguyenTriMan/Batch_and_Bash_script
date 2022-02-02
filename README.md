                            Batch Script - Overview
These files have the special extension BAT or CMD --> recognized and executed through a shell (on window, interpreter is known as cmd)
Common command: https://www.tutorialspoint.com/batch_script/batch_script_commands.htm

Directory: cd /d --> change driver 
    %cd%    refers to the current working directory (variable)
    %~dp0   refers to the full path to the batch file's directory (static)
    %~dpnx0 and %~f0 both refer to the full path to the batch directory and file name (static)
    Ex: set dir="C:\Users\Administrator\Desktop" (have space make variable have space)
        set dir=%cd%
        cd /d %dir% | pushd %dir%

Syntax:
    @echo off:
        By default, a batch file will display its command as it runs. The purpose of this first command is to turn off this display. The command "echo off" turns off the display for the whole script, except for the "echo off" command itself. The "at" sign "@" in front makes the command apply to itself as well.

    @REM: comment

    ">": write to file
    ">>": append to file

Variables:
    Two types variables in batch file: 
    - Variable can be passed when batch file is called: 
        Ex: variable.bat 19 99
            echo %1 --> print 19
            echo %2 --> print 99

    - Using set command: set /A variable-name=value
        where,
            variable-name is the name of the variable you want to set.
            value is the value which needs to be set against the variable.
            /A – This switch is used if the value needs to be numeric in nature.
        Ex: 
            set message = Hello World 
            echo %message% --> print Hello World
            set /A var1 = 5
            set /A var2 = 10
            set /A divide = %var1% / %var2%
            echo %divide% --> print 0

    - Local variable:
        Using SETLOCAL to start assign local variable. End with command ENDLOCAL or EXIT or end of file (EOF)

