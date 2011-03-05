REM -*- bat -*-
@Echo on

mkdir Xml-odXihBhRVpA4
.\unzip -q -n Xml.zip -d Xml-odXihBhRVpA4

:: http://nsis.sourceforge.net/XML_plug-in
copy /y Xml-odXihBhRVpA4\Include "%programfiles%\NSIS\Include"
copy /y Xml-odXihBhRVpA4\Plugin  "%programfiles%\NSIS\Plugins"
