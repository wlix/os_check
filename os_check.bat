@echo off

ver | find /i "Version 5.00." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN2K
ver | find /i "Version 5.1." > nul
if %ERRORLEVEL% equ 0 GOTO :WINXP32
ver | find /i "Version 5.2." > nul
if %ERRORLEVEL% equ 0 GOTO :WINXP64
ver | find /i "Version 6.0." > nul
if %ERRORLEVEL% equ 0 GOTO :WINVISTA
ver | find /i "Version 6.1." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN7
ver | find /i "Version 6.2." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN8
ver | find /i "Version 6.3." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN8.1
ver | find /i "Version 10.0." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN10
goto :OTHER

:WIN2K
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows 2000 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows 2000 64bit" です。
echo.
goto END

:WINXP32
echo.
echo あなたの OS は "Windows XP 32bit" です。
echo.
goto END

:WINXP64
echo.
echo あなたの OS は "Windows XP 64bit" です。
echo.
goto END

:WINVISTA
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows VISTA 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows VISTA 64bit" です。
echo.
goto END

:WIN7
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows 7 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows 7 64bit" です。
echo.
goto END

:WIN8
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows 8 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows 8 64bit" です。
echo.
goto END

:WIN8.1
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows 8.1 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows 8.1 64bit" です。
echo.
goto END
 
:WIN10
echo.
if "%PROCESSOR_ARCHITECTURE%" EQU "x86" echo あなたの OS は "Windows 10 32bit" です。
if "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" echo あなたの OS は "Windows 10 64bit" です。
echo.
goto END
 
:OTHER
echo.
echo 認識できません。何か別の OS から実行されていませんか？
echo.
goto END

:END
echo （終了するには何かキーを押してください）
pause > NUL
exit
