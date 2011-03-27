REM -*- bat -*-
@Echo on
:: http://nsis.sourceforge.net/XML_plug-in

set stage=%cd%\Xml-odXihBhRVpA4

mkdir %stage%
.\unzip -q -n Xml.zip -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
   copy /y "%stage%\Include" "%programfiles%\NSIS\Unicode\Include"
   copy /y "%stage%\Plugin"  "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
   copy /y "%stage%\Include" "%programfiles%\NSIS\Include"
   copy /y "%stage%\Plugin"  "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"