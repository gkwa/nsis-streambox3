REM -*- bat -*-
@Echo on

set plugin=FindProcDLL Unicode bin
set zip=%plugin%.zip
set stage=%cd%\%plugin%-odXihBhRVpA4

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