REM -*- bat -*-
@Echo on

set zip=FindProc.zip

set stage=%cd%\%zip%-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in

cd "%programfiles%\NSIS"

REM if exist Unicode\Plugins\nul (
REM 	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
REM )

if exist Plugins\nul (
	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"