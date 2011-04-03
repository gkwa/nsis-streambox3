REM -*- bat -*-
@Echo on

set zip=EnumINI.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\Plugins\EnumINI.dll" "%programfiles%\NSIS\Unicode\Plugins"
)
if exist Plugins\nul (
	copy /y "%stage%\Plugins\EnumINI.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"