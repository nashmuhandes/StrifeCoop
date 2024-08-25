@echo off

echo Welcome to StrifeCoop!
echo.

:savefilenameinput
set /P savefilename="Save file name: "
if not defined savefilename (
	goto savefilenameisempty
) else (
	goto additionalmods
)

:savefilenameisempty
echo.
echo You must provide a valid save file!
echo.
goto savefilenameinput

:additionalmods
set /P morefiles="Additional mods to load (separate each mod with space): "
goto success

:success
echo.
echo Loading %savefilename%...
echo.
.\engine\gzdoom.exe -iwad ..\STRIFE1.WAD -config .\engine\config\StrifeCoop.ini -file ..\StrifeCoop.pk3 %morefiles% -host %playercount% -loadgame %savefilename% +sv_nocrouch 1 +sv_noplayerclip 1 +sv_nothingspawn 1 +sv_coopsharekeys 1 +sv_localitems 1
