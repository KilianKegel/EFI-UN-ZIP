@echo off
set ONE=1
for /F "tokens=1-3" %%a in ('type BUILDNUM.h') do set BUILDOLD=%%c
for /F "tokens=1-3" %%a in ('type VERSION.h ^|find "MINORVER"') do set MINORVER=%%c
for /F "tokens=1-3" %%a in ('type VERSION.h ^|find "MAJORVER"') do set MAJORVER=%%c
for /F "tokens=1-3" %%a in ('type VERSION.h ^|find "PATCHVER"') do set PATCHVER=%%c


set /a "BUILD=%BUILDOLD%+%ONE%"
echo #define BUILDNUM %BUILD% > BUILDNUM.h
REM type BUILDNUM.h
REM type VERSION.h
echo. & ECHO ^   ^VERSION.BUILD: v%MAJORVER%.%MINORVER%.%PATCHVER%.%BUILD% & echo.

set BUILDOLD=
set BUILD=
