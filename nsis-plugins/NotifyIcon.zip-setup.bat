REM -*- bat -*-
@Echo on
set r=%cd%\..\robocopy.exe

set zip=NotifyIcon.zip

set stage=%cd%\%zip%-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Plugins\nul ( %r% "%stage%" "%programfiles%\NSIS" /e /s )
if exist Unicode\nul ( %r% "%stage%" "%programfiles%\NSIS\Unicode" /e /s )

rmdir /q/s "%stage%"

