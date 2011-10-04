REM -*- bat -*-
@Echo on


set plugin=EnumINI.zip
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cd "%programfiles%\NSIS"

if exist Plugins\nul ( robocopy "%stage%" "%programfiles%\NSIS" /e /s )
if exist Unicode\nul ( robocopy "%stage%" "%programfiles%\NSIS\Unicode" /e /s )

rmdir /q/s "%stage%"