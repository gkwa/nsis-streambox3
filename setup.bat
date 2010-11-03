@Echo off
REM -*- bat -*-

:: usage cmd /c setup.bat

if not exist "%programfiles%\NSIS\NUL" ( 
   echo installing nsis
   cmd /c nsis-2.46-setup.exe /S 
)

copy /y pathman.exe %systemroot%\system32
pathman /au "%systemdrive%\Program Files\NSIS"
