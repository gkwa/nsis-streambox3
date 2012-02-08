REM -*- bat -*-
@Echo on

set plugin=SelfDel
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4
set r=%cd%\..\robocopy.exe

.\7za x -y "%zip%" -o"%stage%"

cd "%programfiles%\NSIS"

if exist Plugins\nul ( %r% "%stage%" "%programfiles%\NSIS" /e /s )
if exist Unicode\nul ( %r% "%stage%\Unicode" "%programfiles%\NSIS\Unicode" /e /s )

rmdir /q/s "%stage%"
