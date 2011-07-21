:top
@echo off
echo.
color B
echo  Please enter your MySQL info
echo.
set /p host=  MySQL Server Address (Default = localhost): 
if %host%. == . set host=localhost
set /p user=  MySQL Username (Default = root): 
if %user%. == . set user=root
set /p pass=  MySQL Password (Default = ascent ): 
if %pass%. == . set pass=
set /p skyfire=  skyfire World Database (Default = world): 
if %skyfire%. == . set skyfire=skyfire
set port=3306
set mysqlpath=.\mysql\

:begin
CLS
echo.
echo   #################################
echo   #_______________________________#
echo   #___$$$____________________$$$__#
echo   #____$$$$$$____________$$$$$$___#
echo   #_______$$$$$$??????$$$$$$______#
echo   #________$$$$$??????$$$$$_______#
echo   #__________??__????__??_________#
echo   #__________???______???_________# Rage Mall - Version 1.0b
echo   #__________????????????_________#
echo   #__________????????????_________#
echo   #___________??????????__________#
echo   #______$$$$$_????????_$$$$$_____#
echo   #_____$$$$$$$?????????$$$$$$$___#
echo   #____$$$$$$$$??????????$$$$$$$__#
echo   #################################
echo.
echo 	S - skyfire
echo.
set /p a=	Enter a letter: 
if %a%==* goto error
if %a%==s goto skyfire
if %a%==S goto skyfire
set a=
goto error

:skyfire
CLS
echo.
echo   #################################
echo   #_______________________________#
echo   #___$$$____________________$$$__#
echo   #____$$$$$$____________$$$$$$___#
echo   #_______$$$$$$??????$$$$$$______#
echo   #________$$$$$??????$$$$$_______#
echo   #__________??__????__??_________#
echo   #__________???______???_________# Rage Mall - Version 1.0b
echo   #__________????????????_________#
echo   #__________????????????_________#
echo   #___________??????????__________#
echo   #______$$$$$_????????_$$$$$_____#
echo   #_____$$$$$$$?????????$$$$$$$___#
echo   #____$$$$$$$$??????????$$$$$$$__#
echo   #################################
echo.
echo 	I - Import Vendor Data
echo 	S - Spawn Vendors
echo 	D - Despawn Vendors
echo 	E - Remove Everything
echo 	B - Back
echo.
set /p f=	Enter a letter: 
if %f%==* goto error
if %f%==i goto skyfire_import
if %f%==I goto skyfire_import
if %f%==s goto skyfire_spawn
if %f%==S goto skyfire_spawn
if %f%==d goto skyfire_despawn
if %f%==D goto skyfire_despawn
if %f%==e goto skyfire_remove
if %f%==E goto skyfire_remove
if %f%==b goto begin
if %f%==B goto begin
set f=
goto error

:skyfire_import
CLS
echo.
echo  Importing...
echo.
for %%C in (.\development\vendors_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
for %%C in (.\development\vendordata_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
for %%C in (.\development\item_sets_vendors_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity

:skyfire_spawn
CLS
echo.
echo   #################################
echo   #_______________________________#
echo   #___$$$____________________$$$__#
echo   #____$$$$$$____________$$$$$$___#
echo   #_______$$$$$$??????$$$$$$______#
echo   #________$$$$$??????$$$$$_______#
echo   #__________??__????__??_________#
echo   #__________???______???_________# Rage Mall - Version 1.0b
echo   #__________????????????_________#
echo   #__________????????????_________#
echo   #___________??????????__________#
echo   #______$$$$$_????????_$$$$$_____#
echo   #_____$$$$$$$?????????$$$$$$$___#
echo   #____$$$$$$$$??????????$$$$$$$__#
echo   #################################
echo.
echo 	1 - GM Island
echo 	2 - (Not implemented yet)
echo 	3 - (Not implemented yet)
echo 	B - Back
echo.
set /p g=	Enter a letter: 
if %g%==* goto error
if %g%==1 goto skyfire_spawn1
if %g%==2 goto skyfire_spawn2
if %g%==3 goto skyfire_spawn3
if %g%==b goto skyfire
if %g%==B goto skyfire
set g=
goto error

:skyfire_spawn1
CLS
echo.
echo  Spawning Vendors...
echo.
for %%C in (.\development\spawn_gmisland_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity_spawn

:skyfire_spawn2
CLS
echo.
echo  Spawning Vendors...
echo.
for %%C in (.\development\spawn_gmisland_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity_spawn

:skyfire_spawn3
CLS
echo.
echo  Spawning Vendors...
echo.
for %%C in (.\development\spawn_gmisland_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity_spawn

:skyfire_despawn
CLS
echo.
echo  Despawning Vendors...
echo.
for %%C in (.\development\despawn_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity

:skyfire_remove
CLS
echo.
echo  Removing Rage Mall...
echo.
for %%C in (.\development\removeall_skyfire.sql) do (
echo  Import: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %skyfire% < "%%~fC"
)
echo.
echo  Done.
echo.
echo  Press any key to exit.
pause >NUL
goto trinity

:error
CLS
echo.
echo  Please enter a correct letter.
echo.
echo  Press any key to exit.
pause >NUL
goto begin
