@echo off
if not "%1" == "get" (
    exit 1
)

set /p inputLine=""

if "%inputLine%" == "registry2.example.com" (
     echo Fake credentials not found on credentials store '%inputLine%' 0>&2
     exit 1
)

if "%inputLine%" == "registry.example.com" (
     echo {
     echo   "ServerURL": "url",
     echo   "Username": "username",
     echo   "Secret": "secret"
     echo }
     exit 0
)
if "%inputLine%" == "registrytoken.example.com" (
     echo {
     echo   "ServerURL": "url",
     echo   "Username": "<token>",
     echo   "Secret": "secret"
     echo }
     exit 0
)
if "%inputLine%" == "registrynoserverurl.example.com" (
     echo {
     echo   "Username": "username",
     echo   "Secret": "secret"
     echo }
     exit 0
)
if "%inputLine%" == "registrynoserverurltoken.example.com" (
     echo {
     echo   "Username": "<token>",
     echo   "Secret": "secret"
     echo }
     exit 0
)

exit 1
