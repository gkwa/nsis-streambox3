@Echo on
REM -*- bat -*-

curl -O http://installer-bin.streambox.com/7za.exe
curl -O http://installer-bin.streambox.com/autoit-v3-setup.exe
curl -O http://installer-bin.streambox.com/nsis-2.46-Unicode-setup.exe
curl -O http://installer-bin.streambox.com/nsis-2.46-setup.exe
curl -O http://installer-bin.streambox.com/sed-4.2-1-dep.zip
curl -O http://installer-bin.streambox.com/sed-4.2-1-bin.zip

rem added unicode nsis which supports strings larger than 1024 bytes
rem http://code.google.com/p/unsis

:: usage cmd /c setup.bat


set f=nsis-2.46-setup.exe
cmd /c %f% /S 

set f=nsis-2.46-Unicode-setup.exe
cmd /c %f% /S 

.\pathman /ru "%systemdrive%\Program Files\NSIS"
.\pathman /ru "%systemdrive%\Program Files\NSIS\Unicode"

cd nsis-plugins
cmd /c setup.bat

cmd /k "reg query hkcu\environment /v Path"
