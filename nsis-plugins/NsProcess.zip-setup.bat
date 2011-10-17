REM -*- bat -*-
@Echo on

set plugin=NsProcess
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4
set r=%cd%\..\robocopy.exe

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Plugins\nul ( %r% "%stage%" "%programfiles%\NSIS" /e /s )
if exist Unicode\nul ( %r% "%stage%" "%programfiles%\NSIS\Unicode" /e /s )

rmdir /q/s "%stage%"