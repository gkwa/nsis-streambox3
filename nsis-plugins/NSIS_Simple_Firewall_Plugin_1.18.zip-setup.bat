REM -*- bat -*-
@Echo on

set plugin=NSIS_Simple_Firewall_Plugin_1.18
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n NSIS_Simple_Firewall_Plugin_1.18.zip -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\SimpleFC.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
	copy /y "%stage%\SimpleFC.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"