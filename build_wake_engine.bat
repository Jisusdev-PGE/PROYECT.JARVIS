@echo off
setlocal
if not exist dist mkdir dist
cl /nologo /EHsc /O1 /MT /W3 /DUNICODE /D_UNICODE wake_engine\main.cpp /link /SUBSYSTEM:WINDOWS shell32.lib user32.lib advapi32.lib /OUT:dist\JarvisWake.exe
if errorlevel 1 exit /b 1
echo Compilado dist\JarvisWake.exe
endlocal
