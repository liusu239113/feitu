@echo off
setlocal
cd /d "%~dp0"
set "PY=E:\Python\Python311\python.exe"
if not exist "%PY%" set "PY=python"
start "H5_928383_server" /min "%PY%" -m http.server 9283 --bind 127.0.0.1
>nul timeout /t 1 /nobreak
start "" "http://127.0.0.1:9283/index.html"
echo H5 game opened at http://127.0.0.1:9283/index.html
echo Close the H5_928383_server window to stop the local server.
