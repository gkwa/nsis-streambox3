REM -*- bat -*-
@Echo on

set stage=NSIS_Simple_Service_Plugin_1.28.zip
mkdir "%stage%"
.\unzip -q -n NSIS_Simple_Service_Plugin_1.28.zip -d "%stage%"

copy /y "%stage%\SimpleFC.dll" "%programfiles%\NSIS\Unicode\Plugins"

rmdir /q/s "%stage%"