@echo off

echo Welcome to StrifeCoop!
echo.

:savefilenameinput
set /P savefilename="Save file name: "
if not defined savefilename (
	goto savefilenameisempty
) else (
	goto netaddressinput
)

:savefilenameisempty
echo.
echo You must provide a valid save file!
echo.
goto savefilenameinput

:netaddressinput
set /P netaddress="Host's IP address or network name: "
if not defined netaddress (
	goto netaddressisempty
) else (
	goto additionalmods
)

:netaddressisempty
echo.
echo You must provide a valid IP address or network name!
echo.
goto netaddressinput

:additionalmods
set /P morefiles="Additional mods to load (separate each mod with space): "
goto success

:success
echo.
echo Loading %savefilename%... will join a coop game at %netaddress%...
echo.
gzdoom -iwad strife1.wad -file StrifeCoop.pk3 %morefiles% -join %netaddress% -loadgame Save/%savefilename%
