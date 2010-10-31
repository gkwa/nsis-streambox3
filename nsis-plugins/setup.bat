@Echo off
REM Last modified $Id$
REM $HeadURL$
REM -*- bat -*-

:: http://nsis.sourceforge.net/XML_plug-in
copy /y Xml\Include "%programfiles%\NSIS\Include"
copy /y Xml\Plugin  "%programfiles%\NSIS\Plugin"
