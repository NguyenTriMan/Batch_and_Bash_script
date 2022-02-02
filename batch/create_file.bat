@ECHO OFF

@REM create folder temp and lists.txt file to store all the name of files in C:\Users\Administrator\Desktop\bat_bash\batch directory
md .\temp
ECHO Hello World > C:/Users/Administrator/Desktop/bat_bash/batch/temp/lists.txt
dir "C:\Users\Administrator\Desktop\bat_bash\batch" >> C:/Users/Administrator/Desktop/bat_bash/batch/temp/lists.txt

ECHO The program has completed