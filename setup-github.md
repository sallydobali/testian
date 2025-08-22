# راهنمای راه‌اندازی GitHub Repository

## مراحل راه‌اندازی:

### 1. نصب Git (اگر نصب نیست)
- دانلود Git از: https://git-scm.com/downloads
- نصب و راه‌اندازی

### 2. ایجاد Repository در GitHub
1. به GitHub.com بروید
2. روی "New repository" کلیک کنید
3. نام repository را `electron-chat-app` بگذارید
4. آن را Public یا Private کنید
5. روی "Create repository" کلیک کنید

### 3. راه‌اندازی محلی
```bash
# در پوشه پروژه
git init
git add .
git commit -m "Initial commit: Electron Chat App"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/electron-chat-app.git
git push -u origin main
```

### 4. تنظیم GitHub Actions
- GitHub Actions به صورت خودکار فعال می‌شود
- فایل‌های workflow در `.github/workflows/` قرار دارند

### 5. ساخت و انتشار
```bash
# ساخت برای ویندوز
npm run build:win

# ساخت برای همه پلتفرم‌ها
npm run build

# ایجاد tag برای انتشار
git tag v1.0.0
git push origin v1.0.0
```

## فایل‌های مهم:
- `package.json` - تنظیمات پروژه و build
- `.github/workflows/build.yml` - GitHub Actions برای ساخت خودکار
- `.github/workflows/test.yml` - GitHub Actions برای تست
- `README.md` - راهنمای پروژه

## نکات مهم:
1. نام کاربری GitHub را در `package.json` تغییر دهید
2. آیکون‌های مناسب در پوشه `assets/` قرار دهید
3. توضیحات پروژه را در `README.md` به‌روزرسانی کنید
