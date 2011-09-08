REM -*- bat -*-
@Echo on
set r=%cd%\..\robocopy.exe

set zip=ExecDos.zip

set stage=%cd%\%zip%-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Plugins\nul (
	copy /y "%stage%\Plugins\execDos.dll" "%programfiles%\NSIS\Plugins"
	%r%  "%stage%\Examples" "%programfiles%\NSIS\Examples" /e /s
	%r%  "%stage%\Contrib" "%programfiles%\NSIS\Contrib" /e /s
	%r%  "%stage%\Docs" "%programfiles%\NSIS\Docs" /e /s
)

if exist Unicode\nul (
	copy /y "%stage%\Unicode\Plugins\execDos.dll" "%programfiles%\NSIS\Unicode\Plugins"
	%r%  "%stage%\Examples" "%programfiles%\NSIS\Unicode\Examples" /e /s
	%r%  "%stage%\Contrib" "%programfiles%\NSIS\Unicode\Contrib" /e /s
	%r%  "%stage%\Docs" "%programfiles%\NSIS\Unicode\Docs" /e /s
)

rmdir /q/s "%stage%"

