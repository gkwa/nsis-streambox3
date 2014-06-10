@Echo off
REM -*- bat -*-

curl -O http://installer-bin.streambox.com/7za.exe
curl -O http://installer-bin.streambox.com/autoit-v3-setup.exe
curl -O http://installer-bin.streambox.com/nsis-2.46-Unicode-setup.exe
curl -O http://installer-bin.streambox.com/nsis-2.46-setup.exe
curl -O http://installer-bin.streambox.com/sed-4.2-1-dep.zip
curl -O http://installer-bin.streambox.com/sed-4.2-1-bin.zip

:: usage cmd /c setup.bat

if not exist "%programfiles%\NSIS\NUL" ( 
   echo installing nsis
   cmd /c nsis-2.46-setup.exe /S 
)

copy /y pathman.exe %systemroot%\system32
pathman /au "%systemdrive%\Program Files\NSIS"
