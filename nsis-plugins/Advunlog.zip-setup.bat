REM -*- bat -*-
@Echo on

set zip=Advunlog.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Include\nul (
	copy /y "%stage%\Include\AdvUninstLog.nsh" "%programfiles%\NSIS\Unicode\Include"
)
if exist Include\nul (
	copy /y "%stage%\Include\AdvUninstLog.nsh" "%programfiles%\NSIS\Include"
)

rmdir /q/s "%stage%"