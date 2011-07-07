REM -*- bat -*-
@Echo on

set zip=IpConfig.zip

set stage=%cd%\%zip%-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\Unicode\Plugins\IpConfig.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
	copy /y "%stage%\Plugins\IpConfig.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"