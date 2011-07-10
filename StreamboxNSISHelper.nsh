!ifndef StreamboxNSISHelper_INCLUDED
!define StreamboxNSISHelper_INCLUDED

!include NSISpcre.nsh

# !insertmacro REMatches
!insertmacro RESetOption
!insertmacro REMatches


!macro determinIfWriteProtectIsOn

	##############################
	# determine if write protect is on/off
	##############################
	GetTempFileName $0
	nsExec::ExecToStack '"$SYSDIR\cmd" /c \
		$SYSDIR\fbwfmgr.exe /displayconfig 2>&1 > $0' $1
# File-based write filter is not enabled for the current session.

	ClearErrors
	FileOpen $2 $0 r #$2 is file handle
	IfErrors done
	# I assume first line is current state (such as "File-based write filter configuration for the current session:)
	FileRead $2 $3 
	# I assume second line describes fbwf sate of current session (for example "    filter state: enabled."
	FileRead $2 $3 
#  RECaptureMatches RESULT PATTERN SUBJECT PARTIAL
	${RECaptureMatches} $R1 "(.*enabled)" "$3" 1
	${If} $R1 > 0
			FileOpen $R1 $WINDIR\temp\disable_write_protect_for_install.bat  w
					FileWrite $R1 '\
@echo off$\r$\n\
ECHO Write Protect OFF$\r$\n\
ECHO This will allow files on the System Drive to be changed$\r$\n\
ECHO.$\r$\n\
ECHO.$\r$\n\
SET /p choice=This will require a system restart, do you want to continue? (Y/N)$\r$\n\
$\r$\n\
IF "%choice%"=="y" GOTO do$\r$\n\
IF "%choice%"=="Y" GOTO do$\r$\n\
IF "%choice%"=="yes" GOTO do$\r$\n\
IF "%choice%"=="Yes" GOTO do$\r$\n\
GOTO notdo$\r$\n\
$\r$\n\
:do$\r$\n\
ECHO Restarting, please wait....$\r$\n\
$WINDIR\system32\fbwfmgr.exe /disable$\r$\n\
set link=%ALLUSERsPROFILE%\Desktop\Disable Write Protect.lnk$\r$\n\
if exist "%link%" ( del /q "%link%" )$\r$\n\
shutdown -r -t 00$\r$\n\
exit$\r$\n\
$\r$\n\
:notdo$\r$\n\
ECHO Operation aborted. Press any key to exit...$\r$\n\
PAUSE$\r$\n\
exit$\r$\n\
$\r$\n\
'
			FileClose $R1
			SetShellVarContext all
			CreateShortCut "$DESKTOP\Disable Write Protect.lnk" $WINDIR\temp\disable_write_protect_for_install.bat
		MessageBox MB_ICONSTOP \
		"I can't continue with FBWF write filter turned on.  In order to continue, you must disable the \
			drive write protect, reboot and retry the install.   In order to disable drive write protect \
			you can run the $\"Disable Write Protect$\" shortcut on the desktop."
		Abort
	${EndIf}
	FileClose $2
	done:

!macroend



!endif
