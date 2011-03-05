REM -*- bat -*-
@Echo on

set stage=Xml-odXihBhRVpA4

mkdir %stage%
.\unzip -q -n Xml.zip -d %stage%

:: http://nsis.sourceforge.net/XML_plug-in
copy /y %stage%\Include "%programfiles%\NSIS\Include"
copy /y %stage%\Plugin  "%programfiles%\NSIS\Plugins"

rmdir /q/s %stage%