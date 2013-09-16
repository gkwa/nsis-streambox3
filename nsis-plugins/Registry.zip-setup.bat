REM -*- bat -*-
@Echo on

set plugin=Registry
set zip=%plugin%.zip
set stage=%cd%\%zip%-odXihBhRVpA4
set r=%cd%\..\robocopy.exe

.\7za x -y "%zip%" -o"%stage%"

set pf=%ProgramFiles%
if not "%ProgramFiles(x86)%"=="" set pf=%ProgramFiles(x86)%
%SystemDrive% && cd "%pf%\NSIS"

if exist Plugins\nul ( %r% "%stage%\Desktop\Plugin" "%pf%\NSIS\Plugins" /e /s )
if exist Include\nul ( %r% "%stage%\Desktop\Include" "%pf%\NSIS\Include" /e /s )
if exist Examples\nul ( %r% "%stage%\Desktop\Example" "%pf%\NSIS\Examples\Registry" /e /s )
if exist Examples\nul ( %r% "%stage%\Desktop" "%pf%\NSIS\Examples\Registry" Readme.txt )

if exist Unicode\Plugins\nul ( %r% "%stage%\Desktop\Plugin" "%pf%\NSIS\Unicode\Plugins" /e /s )
if exist Unicode\Include\nul ( %r% "%stage%\Desktop\Include" "%pf%\NSIS\Unicode\Include" /e /s )
if exist Unicode\Examples\nul ( %r% "%stage%\Desktop\Example" "%pf%\NSIS\Unicode\Examples\Registry" /e /s )
if exist Unicode\Examples\nul ( %r% "%stage%\Desktop" "%pf%\NSIS\Unicode\Examples\Registry" Readme.txt )

rmdir /q/s "%stage%"
