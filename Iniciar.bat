@echo off
setlocal
cd /d "%~dp0"

rem Unblock files downloaded from internet (safe to run even if not needed)
for /R %%i in (*.hta *.exe *.wav *.png *.jpg *.jpeg *.bmp *.gif) do (
  powershell -NoProfile -Command "Unblock-File -LiteralPath '%%~i'" 2>nul
)

rem Start both apps
start "" "%SystemRoot%\System32\mshta.exe" "%CD%\Sorteador.hta"
start "" "%SystemRoot%\System32\mshta.exe" "%CD%\Painel.hta"

endlocal
rem Abre Sorteador (publico) e Painel (controle)
