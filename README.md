# Electron Chat Application

یک اپلیکیشن چت ساده با Electron که شامل یک پنجره اصلی و یک پنجره چت کوچک است.

## ویژگی‌ها

- 🎨 رابط کاربری مدرن و زیبا
- 💬 پنجره چت جداگانه
- 📱 طراحی ریسپانسیو
- ⚡ عملکرد سریع
- 🔄 ارتباط بین پنجره‌ها

## نصب و راه‌اندازی

### پیش‌نیازها
- Node.js (نسخه 18 یا بالاتر)
- npm یا yarn
- Git (برای clone کردن)

### مراحل نصب

1. **Clone کردن پروژه:**
```bash
git clone https://github.com/yourusername/electron-chat-app.git
cd electron-chat-app
```

2. **نصب وابستگی‌ها:**
```bash
npm install
```

3. **اجرای اپلیکیشن:**
```bash
npm start
```

4. **اجرای در حالت توسعه (با DevTools):**
```bash
npm run dev
```

### ساخت برای انتشار

```bash
# ساخت برای ویندوز
npm run build:win

# ساخت برای macOS
npm run build:mac

# ساخت برای Linux
npm run build:linux

# ساخت برای همه پلتفرم‌ها
npm run build
```

## نحوه استفاده

1. اپلیکیشن را اجرا کنید
2. روی دکمه "باز کردن پنجره چت" کلیک کنید
3. پنجره چت کوچک باز خواهد شد
4. پیام‌های خود را تایپ کنید و Enter بزنید یا روی دکمه ارسال کلیک کنید
5. اپلیکیشن به صورت خودکار پاسخ خواهد داد

## ساختار فایل‌ها

```
├── main.js          # فایل اصلی Electron
├── index.html       # پنجره اصلی
├── chat.html        # پنجره چت
├── package.json     # تنظیمات پروژه
└── README.md        # راهنما
```

## تکنولوژی‌های استفاده شده

- **Electron**: برای ساخت اپلیکیشن دسکتاپ
- **HTML/CSS/JavaScript**: برای رابط کاربری
- **IPC (Inter-Process Communication)**: برای ارتباط بین پنجره‌ها
- **GitHub Actions**: برای ساخت و انتشار خودکار
- **electron-builder**: برای بسته‌بندی اپلیکیشن

## GitHub Actions

این پروژه از GitHub Actions برای ساخت و انتشار خودکار استفاده می‌کند:

- **Build Workflow**: ساخت خودکار برای Windows، macOS و Linux
- **Test Workflow**: تست خودکار کد
- **Release Workflow**: انتشار خودکار هنگام ایجاد tag

### نحوه انتشار

1. تغییر نسخه در `package.json`
2. ایجاد tag: `git tag v1.0.0`
3. Push کردن tag: `git push origin v1.0.0`
4. GitHub Actions به صورت خودکار build و release می‌کند

## توسعه

برای توسعه بیشتر:

1. فایل‌های HTML را برای تغییر رابط کاربری ویرایش کنید
2. فایل `main.js` را برای تغییر رفتار اپلیکیشن ویرایش کنید
3. از `npm run dev` برای باز کردن DevTools استفاده کنید

## مجوز

MIT License
