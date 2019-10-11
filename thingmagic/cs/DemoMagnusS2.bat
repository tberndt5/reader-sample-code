echo off
if not exist ".\build" mkdir .\build
copy lib\MercuryAPI.dll build\MercuryAPI.dll
copy lib\ZeroconfService.dll build\ZeroconfService.dll
copy lib\LLRP.dll build\LLRP.dll
cls
csc /lib:lib /r:MercuryAPI.dll,ZeroconfService.dll /out:build\MagnusS2.exe src\Common.cs src\MagnusS2.cs 
if %ERRORLEVEL% EQU 0 (
    build\MagnusS2
)
pause