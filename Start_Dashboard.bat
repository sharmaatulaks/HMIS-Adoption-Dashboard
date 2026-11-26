@echo off
title ABDM - HMIS Onboarding Dashboard (PMU ABDM, DNH & DD)
cd /d "%~dp0"

echo ===================================================================
echo   ABDM - HMIS Onboarding Dashboard Toolkit
echo   Developed by: PMU ABDM, DNH and DD
echo ===================================================================
echo.

where python >nul 2>nul
if %errorlevel% equ 0 (
    echo Starting local dashboard server at http://localhost:8090 ...
    echo Keep this window open while using the dashboard.
    echo Press Ctrl+C to stop the server.
    echo.
    start "" "http://localhost:8090"
    python -m http.server 8090
    goto :eof
)

where py >nul 2>nul
if %errorlevel% equ 0 (
    echo Starting local dashboard server at http://localhost:8090 ...
    echo Keep this window open while using the dashboard.
    echo Press Ctrl+C to stop the server.
    echo.
    start "" "http://localhost:8090"
    py -m http.server 8090
    goto :eof
)

echo Python not found. Opening index.html directly in your browser...
echo (Please drag & drop File 1 and File 2 in the upload boxes.)
start "" "%~dp0index.html"
pause
