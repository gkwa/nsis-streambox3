REM -*- bat -*-
@Echo on

set plugin=Time
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4
set r=%cd%\..\robocopy.exe

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Include\nul (
	copy /y "%stage%\Include\Time.nsh" "%programfiles%\NSIS\Unicode\Include"
)

if exist Include\nul (
	copy /y "%stage%\Include\Time.nsh" "%programfiles%\NSIS\Include"
)

if exist Unicode\Plugins\nul (
	copy /y "%stage%\Plugin\time.dll" "%programfiles%\NSIS\Unicode\Plugins"
	%r% /e "%stage%\Example" "%programfiles%\NSIS\Unicode\Examples" TimeTest.nsi
)

if exist Plugins\nul (
	copy /y "%stage%\Plugin\time.dll" "%programfiles%\NSIS\Plugins"
	%r% /e "%stage%\Example" "%programfiles%\NSIS\Examples" TimeTest.nsi
)

rmdir /q/s "%stage%"

