@echo off
setlocal
if not exist .venv\Scripts\python.exe (
  echo Crea el venv e instala requirements.txt antes de empaquetar.
  exit /b 1
)
.venv\Scripts\python.exe -m PyInstaller --noconfirm jarvis.spec
if errorlevel 1 exit /b 1
echo Salida prevista: dist\JARVIS.exe
echo No validado fuera de Windows.
endlocal
