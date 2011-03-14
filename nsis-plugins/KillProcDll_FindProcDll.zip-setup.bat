REM -*- bat -*-
@Echo on

set stage=KillProcDll_FindProcDll-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "KillProcDll_FindProcDll.zip" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in
copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"
copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"

rmdir /q/s "%stage%"