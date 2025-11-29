@echo off
echo Starting all services...
echo.

echo Starting Backend Server...
start "Backend" cmd /k "cd menu-api && npm start"
timeout /t 5 /nobreak >nul

echo Starting Frontend...
start "Frontend" cmd /k "cd menu-site && npm run dev"

echo Starting Admin Panel...
start "Admin" cmd /k "cd menu-admin && npm run dev"

echo.
echo All services started!
echo.
echo 📊 Project URLs:
echo Frontend (Menu Site): http://localhost:3000
echo Admin Panel: http://localhost:3001
echo Backend API: http://localhost:5000
echo.
echo 🔐 Admin Login:
echo Username: admin
echo Password: admin123
echo.
pause
