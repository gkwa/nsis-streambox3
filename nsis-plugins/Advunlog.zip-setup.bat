REM -*- bat -*-
@Echo on

set zip=Advunlog.zip
set stage=%cd%\Advunlog-odXihBhRVpA4

mkdir "%stage%"
.\unzip -q -n "%zip%" -d "%stage%"

cmd /c "%stage%\install.exe /S"


rmdir /q /s "%stage%"