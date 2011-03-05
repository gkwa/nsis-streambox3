REM -*- bat -*-
@Echo on

set stage=FindProcDLL Unicode bin-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "FindProcDLL Unicode bin.zip" -d "%stage%"

:: http://nsis.sourceforge.net/XML_plug-in
copy /y "%stage%\FindProcDLL.dll" "%programfiles%\NSIS\Plugin"
