REM -*- bat -*-
@Echo on
set r=%cd%\..\robocopy.exe

set zip=IpConfig.zip

set stage=%cd%\%zip%-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"


if exist Unicode\Plugins\nul (
	copy /y "%stage%\Unicode\Plugins\IpConfig.dll" "%programfiles%\NSIS\Unicode\Plugins"
	%r% /e "%stage%\Examples" "%programfiles%\NSIS\Unicode\Examples"
	%r% /e "%stage%\Docs" "%programfiles%\NSIS\Unicode\Docs"
)

if exist Plugins\nul (
	copy /y "%stage%\Plugins\IpConfig.dll" "%programfiles%\NSIS\Plugins"
	%r% /e "%stage%\Examples" "%programfiles%\NSIS\Examples"
	%r% /e "%stage%\Docs" "%programfiles%\NSIS\Docs"
)

rmdir /q/s "%stage%"