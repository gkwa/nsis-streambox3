REM -*- bat -*-
@Echo on

set stage=%cd%\KillProcDll_FindProcDll-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "KillProcDll_FindProcDll.zip" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
	copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
	copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"