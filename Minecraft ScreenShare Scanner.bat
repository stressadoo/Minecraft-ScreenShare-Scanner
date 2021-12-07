:: Developed by: stressadoo#5364
:: https://github.com/stressadoo
:: Need menumode.exe
@echo off
title Login
color 04
mode 42,9

:login
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
echo.

set "psCommand=powershell -Command "$pword = read-Host 'Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
if %password%== 123 (goto menu) else (goto senhaerrada)
cls

:senhaerrada
cls
goto login

:menu
title Scanner
mode 42,15
cls
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
echo - Choose a option:
echo.

menumode f8f0 "[1] Javaw" "[2] Explorer" "[3] DNS Cache" "[4] DPS" "[5] Credits" "[6] Close"
if %ERRORLEVEL% == 1 goto javaw
if %ERRORLEVEL% == 2 goto explorer
if %ERRORLEVEL% == 3 goto dnscache
if %ERRORLEVEL% == 4 goto dps
if %ERRORLEVEL% == 5 goto credits
if %ERRORLEVEL% == 6 exit
goto menu

:javaw
title Javaw
cls
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
set /p link= - Drop the file:
goto :scanjavaw

:scanjavaw
title Javaw
cls
echo.
powershell write-host -fore Yellow - Cheat List:
echo.
echo > NUL

:: findstr /c:" " > nul %link% && echo

goto :end



:explorer
title Explorer
cls
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
set /p link= - Drop the file:
goto :scanexplorer

:scanexplorer
title Explorer
cls
echo.
powershell write-host -fore Yellow - Cheat List:
echo.
echo > NUL

:: findstr /c:" " > nul %link% && echo

goto :end

:dnscache
title DNS Cache
cls
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
set /p link= - Drop the file:
goto :scandnscache

:scandnscache
title DNS Cache
cls
echo.
powershell write-host -fore Yellow - Cheat List:
echo.
echo > NUL

:: findstr /c:" " > nul %link% && echo

goto :end

:dps
title DPS
cls
echo    _____
echo   / ___/_________ _____  ____  ___  _____
echo   \__ \/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
echo  ___/ / /__/ /_/ / / / / / / /  __/ /
echo /____/\___/\____/_/ /_/_/ /_/\___/_/
echo.
set /p link= - Drop the file:
goto :scandps

:scandps
title DPS
cls
echo.
powershell write-host -fore Yellow - Cheat List:
echo.
echo > NUL

:: findstr /c:" " > nul %link% && echo

goto :end

:end
echo.
powershell write-host -fore Green Scanner Finalizado!
ping localhost -n 5 >nul
goto :menu

:credits
title https://github.com/stressadoo
mode 42,3
cls
echo.
echo - Developed by stressadoo#5364
pause >nul
goto :menu