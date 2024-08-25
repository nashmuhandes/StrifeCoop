@echo off

echo Welcome to StrifeCoop!
echo.

:nameinput
set /P playername="Your name: "
if not defined playername (
	goto nameisempty
) else (
	goto netaddressinput
)

:nameisempty
echo.
echo You must provide a name!
echo.
goto nameinput

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
echo %playername% will join a coop game at %netaddress%...
echo.
.\engine\gzdoom.exe -iwad ..\STRIFE1.WAD -config .\engine\config\StrifeCoop.ini -file ..\StrifeCoop.pk3 %morefiles% -join %netaddress% +name %playername%
