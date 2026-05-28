@echo off

set /p VERSION=<../VERSION

for /f "tokens=* delims= " %%a in ("%VERSION%") do set VERSION=%%a

uv version %VERSION% --project .. --no-sync

for /f %%i in ('git merge-base HEAD origin/main') do set BASE=%%i

git reset %BASE%

git add -A

git commit -m "version = \"v%VERSION%\""