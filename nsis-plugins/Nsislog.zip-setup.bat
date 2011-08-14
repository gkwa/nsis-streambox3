REM -*- bat -*-
@Echo on

set zip=Nsislog.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\plugin\nsislog.dll" "%programfiles%\NSIS\Unicode\Plugins"
)
if exist Plugins\nul (
	copy /y "%stage%\plugin\nsislog.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"


