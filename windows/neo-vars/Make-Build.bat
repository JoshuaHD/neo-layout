@echo off

echo Setting local path variables
:: TortoiseSVN and its clever tool SubWCRev
set Tsvnpath=C:\Programme\TortoiseSVN\bin
set SubWCRev=%Tsvnpath%\SubWCRev.exe

set  ahkpath=C:\Programme\AutoHotkey
set  Ahk2Exe=%ahkpath%\Compiler\Ahk2Exe.exe

REM The path to the authohotkey directory in the local svn copy, MUST be "."
set srcdir=.
set ahkrevtemplate=%srcdir%\_subwcrev.tmpl.ahk
set   ahkrevoutput=%srcdir%\_subwcrev.ahk
set batrevtemplate=%srcdir%\_subwcrev.tmpl.bat
set   batrevoutput=%srcdir%\_subwcrev.bat

REM The path to the directory used for generating a consistent SVN version (revision number)
set svnversiondir=..

:next1
echo Generating Version File
"%SubWCRev%" "%svnversiondir%" "%ahkrevtemplate%" "%ahkrevoutput%" -nm
if errorlevel 1 (
  echo Inconsistent Revision! Aborting
REM  goto :eof
)
"%SubWCRev%" "%svnversiondir%" "%batrevtemplate%" "%batrevoutput%"
call "%batrevoutput%"

set fn=%srcdir%\neo20-r%Revision%

echo Compiling Compose sequences
%srcdir%\makecompose.ahk

rem echo Killing the old (AHK)Driver
rem tskill %fn%

echo removing old version(s) of NEO AHK Exe file
del %srcdir%\neo20-r*.exe 2> nul

echo Compiling the new Driver using Autohotkey
"%Ahk2Exe%" /in "neo20-all.ahk" /out "%fn%.exe" /icon "%srcdir%\neo.ico"

echo Driver Update complete! You can now close this log-window.
pause