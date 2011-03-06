REM -*- bat -*-
@Echo on

set stage=KillProcDll&FindProcDll-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "KillProcDll&FindProcDll.zip" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in
copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Plugins"
copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugins"

rmdir /q/s "%stage%"