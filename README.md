# Batch Script - Overview

These files have the special extension BAT or CMD --> recognized and executed through a shell (on window, interpreter is known as cmd)

Common command: https://www.tutorialspoint.com/batch_script/batch_script_commands.htm

Directory: 

    cd /d --> change driver
    %cd%    refers to the current working directory (variable)
    %~dp0   refers to the full path to the batch file's directory (static)
    %~dpnx0 and %~f0 both refer to the full path to the batch directory and file name (static)
    Ex: set dir="C:\Users\Administrator\Desktop" (have space make variable have space)
        set dir=%cd%
        cd /d %dir% | pushd %dir%

Syntax:

    @echo off:
        By default, a batch file will display its command as it runs. The purpose of this first command is to turn off this display. The command "echo off" turns off the display for the whole script, except for the "echo off" command itself. The "at" sign "@" in front makes the command apply to itself as well.

    @REM or "::" comment. Note use many rem make code slow down.

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

<link rel="stylesheet" type="text/css" href="style.css">
<span class=spoiler>
xxxxy
	xxxxxx xx xxxxy:
		xxx xxx[0]=xxxxx
		xxx xxx[1]=xy
		xxx xxx[2]=xxxx	
		xxxxxxx wxy
			@xxxx xxx 
			xxx xxxx=1 2 3 4 
			(xxx %%x xx (%xxxx%) xx ( 
			   xxxx %%x 
			))
	xwx wxyx xxx xxxxx xxxxy: 
		xxxxxxxx xxxxxxxxxxyxxxxxxxxxxx --> !xxx[%%x]!
		xxxx xxxx %%xxx[%%x]%%
	xxxxxxxx xx xxxxy:
		xxx xxx[0].xxxx=xxx 
		xxx xxx[0].xx=1 
		xxx xxx[1].xxxx=xxxx 
		xxx xxx[1].xx=2 
		xxx /x %%x xx (0 1 1) xx  (
		   xxxx xxxx = !xxx[%%x].xxxx!
		   xxxx xxxx xxxxx = %%xxx[%%x].xx%%
		)
xxxxx/xxxxxx
	xxxxx xx xxxx 0, xxxxxx xx xxxx 1, xxx xxxxxx xx xxxx 2.
	xxx x:\ 2> xxxx.xxx
		xxxxxxxx xxx xxxxxx xx xxx xxxx xxxxx.xxx.
	xxx x:\ > xxxxx.xxx 2>&1
		xxxxxxx xxx xxxxxx xxx xxxxxx
	xxx x:\ > xxx
		xxxxxxx xxy xxxxxx xxxx x xxxxxxx (xxxxxxxxxxx xxxxxxx xxxxxx)
	xYxx xxx > xxxxx.xxx
		yxx xxxx xx xxx x wxxxxxxxxx xx xxxxxxx xxxx. xxxx xxx xx xxxx xy xxxxxxxxxxx xxx xxxxxxx xxxxxx’x xwx xxxxx, xxxxxx xxx
		xxxx xxx xxx xxxxx xxxxxxx xy xxxx xxxx xx xxxx xx xxx xxxxxxxxx. xxxxx, xx xxxxx xxx xxx xxxxx xx xxx xxxx xxxxx.xxx.
	xxxx xxxx:
		xxx /x "xxxxxx=* xxxxxx=" %%x xx (xxw.xxx) xx xxxx %%x
			xxx xxxxxx xxxxxxxxx xx xxxx xx xxxxx xx xxx xxxx xx xxx xxxx xxxx xxxxxxxxx xxxxxx xx wxxxx. xxxx wxxx xx xxxxx xx xxxx xxxxxx xx xxx xxxxxxxx x. xxx xxxx wxxx wxxxx xx xxxx xxxx xxx xxxx, xx xxxx xx xxxx xx xxxxx xxx wxxx xx xxx xxxxxxx xxxxxx.
xxxxxxxx
	:xxxxxxxx_xxxx 
		xx_xxxxxxxxx 
	xXxx /x 0
		xxx xxxxxxxx_xxxx xx xxx xxxx xxxxx xx xxx xxxxxxxx wxxxx xxxxxx xxxx xxxx xxxxxxx xx xxxxx wxxx xxx xxxxxxxx xxxxxxxy xxxx.
		xxx xXxx xxxxxxxxx xx xxxx xx xxxxxx xxxx xxx xxxxxxxx xxxxx xxxxxxxy.
	xx:
		xxxx :xxxxxxy 
		xXxx /x %xxxxxxxxxx% 
		:xxxxxxy 
		xxx /x xxxxx=2 
		xxxx xxx xxxxx xx xxxxx xx %xxxxx% 
		xXxx /x 0
			xxx xxy xxxxx xx xxxx wxxx xxxxxxxx xxx xxxx xxxxxxx xx xx xxxxxx xxxx xxx xxxxxxxxx xXxx /x %xxxxxxxxxx% xx xxx xx xxx xxxx xxxxxxx xx xxxxxxxx xxx xxxx xx xxx xxxx xxxxxxx xxxx xxx xxxxxxxx.
	xxxx :xxxxxxxx_xxxx xxxxxxxxx1, xxxxxxxxx2… xxxxxxxxxx, xxx xxxxxxxxx wxxx %1 xx %~1 (wxxx xxxx xxxxxxxx xxxx xx xxxx xx xxxx xxx)
	xxxxxxxx xxxxxx xxxxx
		xxx xxxxxx xxxxxx xxx xxx xx xxx xxxxxxxx xxxxx xxx xxx xxxxxxx xxx xxx xxxxx(~) xxxxxxxxx xxxxx wxxx xxx xxxxxxxxxx xxxxxx xx xxx xxxxxxxxx.
		xx: xxxxxxxx.xxx xxxx xx xxxxx xxxxxx - xxxxxxxxx wxxx xxxxxx xxxxxx (xxxxxxxxxxxxxx.xxx)
</span>