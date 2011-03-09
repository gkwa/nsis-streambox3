REM -*- bat -*-
@Echo on

set stage=Advunlog-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n "Advunlog.zip" -d "%stage%"

cmd /c "%stage%\install.exe"
