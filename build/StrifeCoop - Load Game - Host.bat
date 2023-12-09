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
gzdoom -iwad strife1.wad -file StrifeCoop.pk3 %morefiles% -host %playercount% -loadgame Save/%savefilename% +sv_nocrouch 1
