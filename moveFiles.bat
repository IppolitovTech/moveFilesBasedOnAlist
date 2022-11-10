@echo off
setlocal
erase notToSafeNames.txt
set "FILE=fileNames.txt"
set "CurrentCatalog=%~dp0"
set "SRCROOT=%CurrentCatalog%\folders"
set "DSTROOT=%CurrentCatalog%\movedFiles"

:: delims is TAB (ASCII 9)
for /f "usebackq tokens=1,2 delims= " %%a in ("%FILE%") do (
    if not exist %SRCROOT%\%%~a (
        echo %%~a >> notToSafeNames.txt
    ) else (
        mkdir "%DSTROOT%\%%~b"
        move "%SRCROOT%\%%~a" "%DSTROOT%\%%~b\%%~a"
    )
)