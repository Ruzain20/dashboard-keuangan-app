@echo off
echo -------------------------------------------------
echo  MEMBANGUN APLIKASI DASHBOARD KEUANGAN (.EXE)
echo -------------------------------------------------
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
  echo [ERROR] Node.js tidak ditemukan. Silakan install dari https://nodejs.org
  pause
  exit /b
)

echo [1/4] Menginstall dependensi (Electron, electron-builder)...
call npm install --silent

echo [2/4] Menjalankan build (akan memakan waktu 2-5 menit)...
call npm run build

echo [3/4] Build selesai!
echo [4/4] File .exe dapat ditemukan di folder "dist\DashboardKeuangan.exe"

explorer dist
pause