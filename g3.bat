@echo off
:: the batch file is named "C:\Program Files ... \G3.bat" in %0; extract path.
set inst=
for /f "delims=" %%a in ("%0") do set inst=%%~da%%~pa
setlocal enableextensions
setlocal enabledelayedexpansion
:: if language file does not exist yet, it is copied to the working directory.
if exist lang.joy goto skip
set lang=
for /f "usebackq skip=1" %%a in (`wmic os get oslanguage`) do set lang=!lang!%%a
if %lang%==1043 copy "%inst%"\G3\lang\langNL.joy lang.joy
if not %lang%==1043 copy "%inst%"\G3\lang\langEN.joy lang.joy
:skip
:: joy wants forward slashes, not backslashes.
set "inst=%inst:\=/%"
"%inst%"joy -k "%inst%"/G3/menuin.joy
