REM -*- bat -*-
@Echo on

set stage=KillProcDLL Unicode bin-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "KillProcDLL Unicode bin.zip" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in
copy /y "%stage%\KillProcDLL.dll" "%programfiles%\NSIS\Unicode\Plugins"

rmdir /q/s "%stage%"