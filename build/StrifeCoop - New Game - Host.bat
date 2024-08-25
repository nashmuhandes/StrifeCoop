@echo off

echo Welcome to StrifeCoop!
echo.

:nameinput
set /P playername="Your name: "
if not defined playername (
	goto nameisempty
) else (
	goto playernumberinput
)

:nameisempty
echo.
echo You must provide a name!
echo.
goto nameinput

:playernumberinput
set /P playercount="How many players to host (minimum 2, maximum 4): "
if not defined playercount (
	goto invalidplayernumbers
) else (
	goto fixplayernumber
)

:invalidplayernumbers
echo.
echo Invalid number of players! Please provide an amount between 2 to 4.
echo.
goto playernumberinput

:fixplayernumber
if %playercount% lss 2 (
	set playercount=2
)
if %playercount% gtr 4 (
	set playercount=4
)
goto skillinput

:skillinput
set /P skill="Skill level (0 = Very Easy, 1 = Easy, 2 = Normal, 3 = Hard, 4 = Nightmare): "
if not defined skill (
	goto invalidskill
) else (
	goto fixskill
)

:invalidskill
echo.
echo Invalid skll level! Please provide a number between 0 to 4.
echo.
goto skillinput

:fixskill
if %skill% lss 0 (
	set skill=0
)
if %skill% gtr 4 (
	set skill=4
)

goto additionalmods

:additionalmods
set /P morefiles="Additional mods to load (separate each mod with space): "
goto success

:success
echo.
echo %playername% will host a coop game for %playercount% players...
echo.
gzdoom.exe -iwad STRIFE1.WAD -config .\config\StrifeCoop.ini -file StrifeCoop.pk3 %morefiles% -host %playercount% +skill %skill% +name %playername% +map map02 +sv_nocrouch 1 +sv_noplayerclip 1 +sv_nothingspawn 1 +sv_coopsharekeys 1 +sv_localitems 1
