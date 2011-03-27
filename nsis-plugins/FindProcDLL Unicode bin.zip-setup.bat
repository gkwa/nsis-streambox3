REM -*- bat -*-
@Echo on

set zip=FindProcDLL Unicode bin.zip

set stage=%cd%\FindProcDLL Unicode bin-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"