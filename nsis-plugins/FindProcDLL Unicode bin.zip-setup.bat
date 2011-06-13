REM -*- bat -*-
@Echo on

set zip=FindProcDLL Unicode bin.zip

set stage=%cd%\FindProcDLL Unicode bin-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

REM if exist Plugins\nul (
REM 	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugins"
REM )

rmdir /q/s "%stage%"