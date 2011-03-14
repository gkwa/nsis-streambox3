REM -*- bat -*-
@Echo on

set stage=Xml-odXihBhRVpA4

mkdir %stage%
.\unzip -q -n Xml.zip -d %stage%

:: http://nsis.sourceforge.net/XML_plug-in
copy /y %stage%\Include "%programfiles%\NSIS\Unicode\Include"
copy /y %stage%\Plugin  "%programfiles%\NSIS\Unicode\Plugins"

rmdir /q/s %stage%