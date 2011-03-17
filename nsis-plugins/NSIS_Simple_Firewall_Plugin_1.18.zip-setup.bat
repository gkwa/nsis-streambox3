REM -*- bat -*-
@Echo on

set stage=NSIS_Simple_Firewall_Plugin_1.18-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n NSIS_Simple_Firewall_Plugin_1.18.zip -d "%stage%"

copy /y "%stage%\SimpleFC.dll" "%programfiles%\NSIS\Unicode\Plugins"

rmdir /q/s "%stage%"