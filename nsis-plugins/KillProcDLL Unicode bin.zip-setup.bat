REM -*- bat -*-
@Echo on

set stage=%cd%\KillProcDLL Unicode bin-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "KillProcDLL Unicode bin.zip" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

rem keep unicode bits separte from non-unicode bits.  therefor commenting this out:
REM if exist Plugins\nul (
REM 	copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Plugins"
REM )

rmdir /q/s "%stage%"