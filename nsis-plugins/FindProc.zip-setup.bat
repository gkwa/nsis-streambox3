REM -*- bat -*-
@Echo on

set plugin=FindProc
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

REM keep unicode bits separte from non-unicode bits.  therefore commenting this out:
REM if exist Unicode\Plugins\nul (
REM 	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
REM )

if exist Plugins\nul (
	copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"