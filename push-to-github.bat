@echo off
echo ========================================
echo راهنمای انتشار پروژه در GitHub
echo ========================================
echo.

echo مرحله 1: بررسی نصب Git...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git نصب نیست!
    echo لطفا Git را از https://git-scm.com/downloads دانلود و نصب کنید
    pause
    exit /b 1
)
echo ✅ Git نصب است

echo.
echo مرحله 2: راه‌اندازی Git repository...
git init
if %errorlevel% neq 0 (
    echo ❌ خطا در راه‌اندازی Git
    pause
    exit /b 1
)

echo.
echo مرحله 3: اضافه کردن فایل‌ها...
git add .
if %errorlevel% neq 0 (
    echo ❌ خطا در اضافه کردن فایل‌ها
    pause
    exit /b 1
)

echo.
echo مرحله 4: ایجاد commit اول...
git commit -m "Initial commit: Electron Chat App with Persian UI"
if %errorlevel% neq 0 (
    echo ❌ خطا در ایجاد commit
    pause
    exit /b 1
)

echo.
echo مرحله 5: تغییر نام branch به main...
git branch -M main
if %errorlevel% neq 0 (
    echo ❌ خطا در تغییر نام branch
    pause
    exit /b 1
)

echo.
echo ========================================
echo ⚠️  مرحله مهم: تنظیم remote repository
echo ========================================
echo.
echo لطفا نام کاربری GitHub خود را وارد کنید:
set /p username=نام کاربری GitHub: 

echo.
echo تنظیم remote repository...
git remote add origin https://github.com/%username%/electron-chat-app.git
if %errorlevel% neq 0 (
    echo ❌ خطا در تنظیم remote
    pause
    exit /b 1
)

echo.
echo مرحله 6: Push کردن به GitHub...
echo ⚠️  اگر از شما نام کاربری و رمز عبور خواسته شد، وارد کنید
git push -u origin main
if %errorlevel% neq 0 (
    echo ❌ خطا در push کردن
    echo لطفا مطمئن شوید که repository در GitHub ایجاد شده است
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ پروژه با موفقیت در GitHub منتشر شد!
echo ========================================
echo.
echo مراحل بعدی:
echo 1. به https://github.com/%username%/electron-chat-app بروید
echo 2. بخش Actions را بررسی کنید
echo 3. برای انتشار نسخه: git tag v1.0.0 && git push origin v1.0.0
echo.
pause
