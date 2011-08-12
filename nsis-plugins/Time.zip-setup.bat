REM -*- bat -*-
@Echo on
set r=%cd%\..\robocopy.exe

set zip=Time.zip

set stage=%cd%\%zip%-odXihBhRVpA4
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
	%r% /e "%stage%\Example\TimeTest.nsi" "%programfiles%\NSIS\Unicode\Examples"
)

if exist Plugins\nul (
	copy /y "%stage%\Plugin\time.dll" "%programfiles%\NSIS\Plugins"
	%r% /e "%stage%\Example\TimeTest.nsi" "%programfiles%\NSIS\Examples"
)

rmdir /q/s "%stage%"

