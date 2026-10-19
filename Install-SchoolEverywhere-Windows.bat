@echo off
setlocal EnableExtensions

set "VERSION=v1.2.22"
set "REPOSITORY=a-abdelghany/schooleverywhere-parent-downloads"
set "FILE_NAME=SchoolEverywhere-Parent-Windows-Setup.exe"
set "EXPECTED_SHA256=8D1E52CC95E498762F3AC1395B38DCCF8C3BE4E11CD75FF885F26339576AC98F"
set "DOWNLOAD_URL=https://github.com/%REPOSITORY%/releases/download/%VERSION%/%FILE_NAME%"
set "DOWNLOAD_DIR=%TEMP%\SchoolEverywhereParent-%VERSION%"
set "DOWNLOAD_PATH=%DOWNLOAD_DIR%\%FILE_NAME%"

echo SchoolEverywhere Parent %VERSION% installer
echo Downloading the verified Windows application...

if not exist "%DOWNLOAD_DIR%" mkdir "%DOWNLOAD_DIR%"
where curl.exe >nul 2>nul
if errorlevel 1 (
  echo This version of Windows does not include the required secure download tool.
  echo Nothing was installed.
  pause
  exit /b 1
)

curl.exe --fail --location --proto "=https" --tlsv1.2 --retry 3 --output "%DOWNLOAD_PATH%" "%DOWNLOAD_URL%"
if errorlevel 1 (
  echo The installer could not be downloaded.
  echo Nothing was installed.
  pause
  exit /b 1
)

set "ACTUAL_SHA256="
for /f "usebackq delims=" %%H in (`powershell.exe -NoProfile -NonInteractive -Command "(Get-FileHash -LiteralPath $env:DOWNLOAD_PATH -Algorithm SHA256).Hash"`) do set "ACTUAL_SHA256=%%H"

if /I not "%ACTUAL_SHA256%"=="%EXPECTED_SHA256%" (
  echo Safety check failed: the downloaded file does not match the published release.
  echo Nothing was installed.
  del /q "%DOWNLOAD_PATH%" >nul 2>nul
  pause
  exit /b 1
)

echo Download verified.
echo Opening the SchoolEverywhere Parent installer...
start "" "%DOWNLOAD_PATH%"
exit /b 0
