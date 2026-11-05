@echo off
setlocal enabledelayedexpansion

if exist config.yml (
    for /f "tokens=2 delims=: " %%a in ('findstr spigot config.yml') do set spigot=%%a

    set spigot=!spigot: =!
    set spigot=!spigot:	=!

    if "!spigot!" == "clubspigot" (
        cd plugins
        if exist BetterCarbonKB.jar ren BetterCarbonKB.jar BetterCarbonKB.ja
        if exist BetterFireballKB.jar ren BetterFireballKB.jar BetterFireballKB.ja
        cd ..
    ) else if "!spigot!" == "carbonspigot" (
        cd plugins
        if exist BetterCarbonKB.ja ren BetterCarbonKB.ja BetterCarbonKB.jar
        if exist BetterFireballKB.ja ren BetterFireballKB.ja BetterFireballKB.jar
        cd ..
    ) else (
        echo Invalid spigot type in config.yml. Exiting...
        exit /b
    )

    echo.
    echo [96mNiggaBalls Premade by Meteor[0m
    echo [96mJoin our discord @ https://discord.gg/meteorlol[0m
    echo.
    "%~dp0java8-for-retards\jdk1.8.0_202\bin\java.exe" -Dfile.encoding=UTF-8 -noverify -jar !spigot!.jar
    pause
    goto :EOF
)

echo What spigot do you want to use?
echo 1. ClubSpigot (Good knockback, pearls, and pots)
echo 2. CarbonSpigot (Better fireball kb and performance)
set /p choice=Enter the number (1 or 2): 

if "%choice%" == "1" (
    echo spigot: clubspigot > config.yml
    cd plugins
    if exist BetterCarbonKB.jar ren BetterCarbonKB.jar BetterCarbonKB.ja
    if exist BetterFireballKB.jar ren BetterFireballKB.jar BetterFireballKB.ja
    cd ..
) else if "%choice%" == "2" (
    echo spigot: carbonspigot > config.yml
    cd plugins
    if exist BetterCarbonKB.ja ren BetterCarbonKB.ja BetterCarbonKB.jar
    if exist BetterFireballKB.ja ren BetterFireballKB.ja BetterFireballKB.jar
    cd ..
) else (
    echo Invalid choice. Exiting...
    exit /b
)

echo.
echo [96mNiggaBalls Premade by Meteor[0m
echo [96mJoin our discord @ https://discord.gg/meteorlol[0m
echo.
for /f "tokens=2 delims=: " %%a in ('findstr spigot config.yml') do set spigot=%%a

set spigot=!spigot: =!
set spigot=!spigot:	=!

"%~dp0java8-for-retards\jdk1.8.0_202\bin\java.exe" -Dfile.encoding=UTF-8 -noverify -jar !spigot!.jar
pause
goto :EOF
