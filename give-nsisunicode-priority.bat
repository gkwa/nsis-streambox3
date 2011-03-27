REM -*- bat -*-
@Echo on

.\pathman /ru "%systemdrive%\Program Files\NSIS"
.\pathman /ru "%systemdrive%\Program Files\NSIS\Unicode"

:: .\pathman /au "%systemdrive%\Program Files\NSIS"
.\pathman /au "%systemdrive%\Program Files\NSIS\Unicode"

cmd /k "reg query hkcu\environment /v Path"