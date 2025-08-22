# راهنمای کامل انتشار پروژه در GitHub

## مرحله 1: نصب Git
اگر Git نصب نیست، از این لینک دانلود کنید:
https://git-scm.com/downloads

## مرحله 2: ایجاد Repository در GitHub

1. به https://github.com بروید
2. روی "New repository" کلیک کنید
3. نام repository را `electron-chat-app` بگذارید
4. توضیحات: "یک اپلیکیشن چت ساده با Electron"
5. آن را Public یا Private کنید
6. **توجه**: گزینه "Initialize this repository with a README" را تیک نزنید
7. روی "Create repository" کلیک کنید

## مرحله 3: راه‌اندازی محلی

در پوشه پروژه (E:\project\testian) این دستورات را اجرا کنید:

```bash
# راه‌اندازی Git
git init

# اضافه کردن همه فایل‌ها
git add .

# ایجاد commit اول
git commit -m "Initial commit: Electron Chat App with Persian UI"

# تغییر نام branch به main
git branch -M main

# اضافه کردن remote repository
git remote add origin https://github.com/YOUR_USERNAME/electron-chat-app.git

# Push کردن به GitHub
git push -u origin main
```

## مرحله 4: تنظیم GitHub Actions

پس از push، GitHub Actions به صورت خودکار فعال می‌شود و فایل‌های workflow در `.github/workflows/` اجرا خواهند شد.

## مرحله 5: تست GitHub Actions

1. به بخش "Actions" در repository بروید
2. باید دو workflow ببینید:
   - "Build and Release Electron App"
   - "Test Electron App"

## مرحله 6: انتشار نسخه اول

```bash
# تغییر نسخه در package.json (اختیاری)
# سپس:
git add .
git commit -m "Prepare for release v1.0.0"
git push

# ایجاد tag برای انتشار
git tag v1.0.0
git push origin v1.0.0
```

## مرحله 7: دانلود فایل‌های ساخته شده

پس از انتشار، فایل‌های ساخته شده در بخش "Releases" قابل دانلود خواهند بود.

## نکات مهم:

### قبل از Push:
1. نام کاربری GitHub را در `package.json` تغییر دهید:
   ```json
   "repository": {
     "url": "https://github.com/YOUR_USERNAME/electron-chat-app.git"
   }
   ```

2. نام نویسنده را در `package.json` تغییر دهید:
   ```json
   "author": "Your Name"
   ```

### فایل‌های موجود:
- ✅ `main.js` - فایل اصلی Electron
- ✅ `index.html` - پنجره اصلی
- ✅ `chat.html` - پنجره چت
- ✅ `package.json` - تنظیمات پروژه
- ✅ `.github/workflows/` - GitHub Actions
- ✅ `README.md` - راهنمای کامل
- ✅ `.gitignore` - فایل‌های نادیده گرفته شده

### ویژگی‌های GitHub Actions:
- 🔄 ساخت خودکار برای Windows، macOS و Linux
- 🧪 تست خودکار کد
- 📦 انتشار خودکار هنگام ایجاد tag
- 🎯 مدیریت نسخه‌ها

## مشکل احتمالی:
اگر در Windows با مشکل symbolic link مواجه شدید، این طبیعی است و در GitHub Actions حل می‌شود.
