@echo off
title Just for Fun Menu
echo Wilkommen in Just for Fun Menu
echo ------------------------------------------
echo Commands:
echo exit - Beenden
echo dz - datum/zeit
echo hallo - sagt hallo
echo shutdown - schaltet den pc aus
echo crash - Warnung kann zum absturz fueren
echo fun - Spas!
echo quest - du kannst eine aufgabe fuer dich erstellen
echo aufgabe - hier kannst du sehen welche aufgaben du hast
echo ------------------------------------------


set /P command=-^> 

if "%command%" == "exit"  goto end
if "%command%" == "dz"  goto command1
if "%command%" == "hallo"  goto command2
if "%command%" == "shutdown"  goto command3
if "%command%" == "crash"  goto command4
if "%command%" == "fun"  goto command5
if "%command%" == "quest"  goto command6
if "%command%" == "aufgabe"  goto command7
echo bitte gib ein Vorgegebenen command ein.
@pause
cls
call JFFM.bat
goto start

:command1
echo Datum: %date%, Zeit: %time% >> DatumUndZeit.txt
echo Aktuelle Datum/Zeit is %date%, %time%.
@pause
cls
call JFFM.bat
goto end

:command2
echo ----------------------------
echo Hallo Benutzer, "%username%"
echo Desktop: "%computername%"
echo ----------------------------
@pause
cls
call JFFM.bat
goto end

:command3
shutdown -s -f -t 10
goto end

:command4
echo Bist du dir sicher? wenn ja druecke Leertaste
@pause
echo Wirklich?! wenn ja druecke Leertaste
@pause
start crash.bat

:command5
echo hast du Python 3.10 installiert. wenn ja druee leertaste
@pause
start fun.py
goto end

:command6
echo hast du Python 3.10 installiert. wenn ja druee leertaste
@pause
start eingabe.py
goto end

:command7
echo hast du Python 3.10 installiert. wenn ja druee leertaste
@pause
start quest.py
goto end

