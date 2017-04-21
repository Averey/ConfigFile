::Windows custome alias similar to linux alias
::
::1. Create a .bat or .cmd file with your DOSKEY commands.
::2. Run regedit and go to HKEY_CURRENT_USER -> Software -> Microsoft -> Command Processor
::3. Add String Value entry with the name AutoRun and the full path of your .bat/.cmd file.
::4. For example, %USERPROFILE%\alias.cmd
::
::Replacing the initial segment of the path with %USERPROFILE% is useful for syncing among multiple machines.
::link:http://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt

@echo off

::common
DOSKEY ls=dir /B 
DOSKEY home=cd /D C:\Users\Administrator  
DOSKEY sshConfig=more C:\Users\Administrator\.ssh\config  



::git alias
DOSKEY gs=git status
DOSKEY ga=git add *
DOSKEY gc=git commit -m"$*"
DOSKEY gcc=git commit -m"little change, no need to explain"
DOSKEY gl=git pull
DOSKEY gp=git push
