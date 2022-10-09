@echo off
title Just for Fun Menu
echo Wilkommen in Just for Fun Menu
echo ------------------------------------------
echo Commands:
echo exit - Beenden
echo dz - datum/zeit
echo hallo - sagt hallo
echo shutdown - schaltet den pc aus
echo starwars - Starwars Battlefront 2 Spielen
echo predator - Preador Hunting Grounds Spielen
echo crash - Warnung kann zum absturz fueren
echo fun - Spaß!
echo ------------------------------------------


set /P command=-^> 

if "%command%" == "exit"  goto end
if "%command%" == "dz"  goto command1
if "%command%" == "hallo"  goto command2
if "%command%" == "shutdown"  goto command3
if "%command%" == "starwars"  goto command4
if "%command%" == "predator"  goto command5
if "%command%" == "crash"  goto command6
if "%command%" == "fun"  goto command7
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
call swbf2.bat
goto end

:command5
call Predator.bat
goto end

:command6
echo Bist du dir sicher? wenn ja druecke Leertaste
@pause
echo Wirklich?! wenn ja druecke Leertaste
@pause
start crash.bat

:command7
echo hast du Python 3.10 installiert. wenn ja druee leertaste
@pause
start fun.py

goto end

