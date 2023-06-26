@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

set char=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
set "code="
FOR /L %%b IN (0, 1, 16) DO (
SET /A rnd_num=!RANDOM! * 62 / 32768 + 1
for /F %%c in ('echo %%char:~!rnd_num!^,1%%') do set code=!code!%%c
)


set "filename=Background-code{%code%}.jpg"
set "folder=C:\Users\%username%\Pictures"

echo Downloading random photo...
powershell -Command "& {Invoke-WebRequest 'https://picsum.photos/1920/1080' -OutFile '%folder%\%filename%'}"
if %errorlevel% neq 0 (
    echo Error: Could not download image.
    goto :end
)

echo Setting desktop background to random photo...
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value '%folder%\%filename%'"
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 1, True
echo Desktop background set to random photo!

:end
