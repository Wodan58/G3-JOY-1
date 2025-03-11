@echo off
setlocal enableextensions
setlocal enabledelayedexpansion
:: the batch file is named "C:\Program Files ... \G3.bat" in %0; extract path.
set inst=
for /f "delims=" %%a in (%0) do set inst=%%~da%%~pa
:: if language file does not exist yet, it is copied to the working directory.
if exist lang.joy goto skip
set lang=
for /f "usebackq skip=1" %%a in (`wmic os get oslanguage`) do set lang=!lang!%%a
if %lang%==1031 copy "%inst%"\G3\lang\langDE.joy lang.joy
if %lang%==1036 copy "%inst%"\G3\lang\langFR.joy lang.joy
if %lang%==1043 copy "%inst%"\G3\lang\langNL.joy lang.joy
if %lang%==2055 copy "%inst%"\G3\lang\langDE.joy lang.joy
if %lang%==2060 copy "%inst%"\G3\lang\langFR.joy lang.joy
if %lang%==2067 copy "%inst%"\G3\lang\langNL.joy lang.joy
if %lang%==3079 copy "%inst%"\G3\lang\langDE.joy lang.joy
if %lang%==3084 copy "%inst%"\G3\lang\langFR.joy lang.joy
if %lang%==4103 copy "%inst%"\G3\lang\langDE.joy lang.joy
if %lang%==4108 copy "%inst%"\G3\lang\langFR.joy lang.joy
if %lang%==5127 copy "%inst%"\G3\lang\langDE.joy lang.joy
if %lang%==5132 copy "%inst%"\G3\lang\langFR.joy lang.joy
if %lang%==6156 copy "%inst%"\G3\lang\langFR.joy lang.joy
if not exist lang.joy copy "%inst%"\G3\lang\langEN.joy lang.joy
:skip
:: joy prefers forward slashes, not backslashes.
set "inst=%inst:\=/%"
"%inst%"joy g3.joy
