@echo off
chcp 65001 >nul
title 国宝健康助手启动器

set "NODE_HOME=C:\Users\REDMI\AppData\Local\Doubao\User Data\sandbox_runtime\bases\c98c5042338ed152c6f10ecd8591889f\node"
set "PATH=%NODE_HOME%;%PATH%"
set "APP_DIR=C:\Users\REDMI\Desktop\health-nutrition-monitor"

echo ============================================
echo   🐼 国宝 - 日常饮食健康与指标监测助手
echo ============================================
echo.
echo 正在启动服务，请稍候...

cd /d "%APP_DIR%"

start "国宝后台服务" /min cmd /c "call npm run dev:all"

timeout /t 4 /nobreak >nul

echo 服务已启动，正在打开国宝网页...
start http://localhost:5173/

echo.
echo ✅ 国宝网页已在浏览器中打开！
echo    前端地址: http://localhost:5173/
echo    后端地址: http://localhost:3001/
echo.
echo 本窗口可以关闭，服务在"国宝后台服务"窗口中运行。
echo 关闭国宝请关闭那个最小化的窗口。
pause >nul