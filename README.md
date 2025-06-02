# GT-MMC - محول الوسائط المتعددة / Multimedia Converter

<div align="center">

![GT-MMC Logo](https://img.shields.io/badge/GT--MMC-v3.1-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-GPLv3-green?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Linux-orange?style=for-the-badge)

**محول وسائط متعدد الصيغ مع واجهة رسومية وسطر الأوامر**

**Multi-format media converter with GUI and CLI interface**

</div>

---

## 🌟 النظرة العامة | Overview

**GT-MMC** هو محول وسائط قوي ومرن يدعم تحويل الفيديو والصوت والصور بسهولة. يتضمن نسختين:
- **gt-mmc**: واجهة سطر الأوامر التفاعلية
- **gt-mmc-gui**: واجهة رسومية كاملة مع ميزة التحميل

**GT-MMC** is a powerful and flexible media converter that supports easy conversion of videos, audio, and images. It includes two versions:
- **gt-mmc**: Interactive command-line interface
- **gt-mmc-gui**: Full graphical interface with download feature

---

## ✨ المميزات | Features

### 🎯 المميزات الأساسية | Core Features
- 🎬 **تحويل الفيديو** | Video conversion (MP4, MKV, AVI, MOV, WebM)
- 🎵 **تحويل الصوت** | Audio conversion (MP3, WAV, OGG, AAC, FLAC, M4A, Opus)
- 🖼️ **تحويل الصور** | Image conversion (PNG, JPG, BMP, WebP, GIF)
- 🎤 **استخراج الصوت من الفيديو** | Extract audio from video
- 📥 **تحميل من الإنترنت** | Download from internet (GUI version only)

### 🌐 المميزات التقنية | Technical Features
- 🔄 **معالجة متعددة الملفات** | Batch processing
- 📊 **شريط التقدم** | Progress bar
- 🌍 **دعم اللغة العربية والإنجليزية** | Arabic and English language support
- 📋 **سجل الأخطاء التفصيلي** | Detailed error logging
- 🎨 **واجهة بديهية** | Intuitive interface

---

## 🛠️ المتطلبات | Requirements

### البرامج المطلوبة | Required Software
# الأدوات الأساسية | Core tools

```bash
sudo apt install ffmpeg zenity kdialog
```
# للواجهة الرسومية (اختياري) | For GUI version (optional)
```bash
sudo apt install yt-dlp
```

### بيئة التشغيل | Environment
- 🐧 **Linux** (Ubuntu, Debian, Fedora, Arch, etc.)
- 🖥️ **Desktop Environment** with GUI support
- 📦 **FFmpeg** for media conversion
- 🪟 **Zenity** or **KDialog** for GUI dialogs

---

## 📦 التثبيت | Installation

### التثبيت السريع | Quick Install
# تحميل الملفات | Download files

```bash
wget https://raw.githubusercontent.com/YOUR_USERNAME/gt-mmc/main/gt-mmc

```
```bash
wget https://raw.githubusercontent.com/YOUR_USERNAME/gt-mmc/main/gt-mmc-gui

```
# إضافة صلاحيات التنفيذ | Make executable

```bash
chmod +x gt-mmc gt-mmc-gui

```

# نقل إلى مجلد النظام | Move to system directory

```bash
sudo mv gt-mmc gt-mmc-gui /usr/local/bin/
```

### التثبيت اليدوي | Manual Install
1. **نسخ الملفات** | Copy the files to your system
2. **تعديل الصلاحيات** | Set execute permissions
3. **إضافة المسار** | Add to PATH (optional)

---

## 🚀 الاستخدام | Usage

### gt-mmc (سطر الأوامر | Command Line)

# تشغيل البرنامج | Run the program

```bash
gt-mmc
```

#### خطوات الاستخدام | Usage Steps:
1. **اختيار اللغة** | Select language (Arabic/English)
2. **اختيار نوع التحويل** | Choose conversion type:
   - تحويل فيديو | Video conversion
   - تحويل صوت | Audio conversion  
   - تحويل صورة | Image conversion
   - استخراج صوت | Extract audio
3. **اختيار الصيغة المطلوبة** | Select output format
4. **تحديد الملفات** | Select input files
5. **اختيار مجلد الحفظ** | Choose output directory

### gt-mmc-gui (الواجهة الرسومية | Graphical Interface)

# تشغيل الواجهة الرسومية | Run GUI version

```bash
gt-mmc-gui
```

#### الخيارات المتاحة | Available Options:
- 📥 **تنزيل فيديو/صوت** | Download Video/Audio
- 🔄 **تحويل ملف وسائط** | Convert Media File
- 🌐 **تغيير اللغة** | Change Language
- ❌ **خروج** | Exit

---

## 📋 أمثلة الاستخدام | Usage Examples

### مثال 1: تحويل فيديو إلى MP4 | Example 1: Convert Video to MP4

1. اختر "تحويل فيديو" | Select "Video Conversion"
2. اختر "mp4" كصيغة الإخراج | Choose "mp4" as output format
3. حدد ملفات الفيديو | Select video files
4. اختر مجلد الحفظ | Choose output folder
   

### مثال 2: استخراج الصوت | Example 2: Extract Audio

1. اختر "استخراج صوت من فيديو" | Select "Extract Audio from Video"
2. اختر "mp3" للصوت | Choose "mp3" for audio
3. حدد ملفات الفيديو | Select video files
4. احفظ في المجلد المطلوب | Save to desired folder


### مثال 3: تحميل من يوتيوب (GUI فقط) | Example 3: Download from YouTube (GUI only)

1. اختر "تنزيل فيديو/صوت" | Select "Download Video/Audio"
2. أدخل رابط الفيديو | Enter video URL
3. اختر النوع (فيديو/صوت) | Choose type (Video/Audio)
4. حدد الصيغة والمجلد | Select format and folder


---

## 🔧 الإعدادات المتقدمة | Advanced Configuration

### ملفات الإعداد | Configuration Files
- `~/.gtmmc_errors.log` - سجل أخطاء gt-mmc | gt-mmc error log
- `~/.config/gmd-lang` - إعدادات اللغة للواجهة الرسومية | GUI language settings
- `~/gmd-errors.log` - سجل أخطاء الواجهة الرسومية | GUI error log

### تخصيص الصيغ | Format Customization
يمكنك تعديل الصيغ المدعومة بتحرير المتغيرات في بداية الملف:

You can customize supported formats by editing variables at the beginning of the file:

```bash
FORMATS_VIDEO=(mp4 mkv avi mov webm)
FORMATS_AUDIO=(mp3 wav ogg aac flac m4a opus)
FORMATS_IMAGE=(png jpg bmp webp gif)
```

---

## 🐛 استكشاف الأخطاء | Troubleshooting

### المشاكل الشائعة | Common Issues

#### المشكلة: "zenity أو kdialog مطلوب" | Issue: "zenity or kdialog required"
**الحل | Solution:**
```bash
sudo apt install zenity kdialog
```

#### المشكلة: "ffmpeg not found" | Issue: "ffmpeg not found"
**الحل | Solution:**
```bash
sudo apt install ffmpeg
```

#### المشكلة: فشل التحويل | Issue: Conversion fails
**الحل | Solution:**
1. تحقق من سجل الأخطاء | Check error log
2. تأكد من صحة الملف الأصلي | Verify source file integrity
3. تأكد من وجود مساحة كافية | Ensure sufficient disk space

### سجلات الأخطاء | Error Logs

# عرض سجل أخطاء سطر الأوامر | View CLI error log

```bash
cat ~/.gtmmc_errors.log

```

# عرض سجل أخطاء الواجهة الرسومية | View GUI error log  

```bash
cat ~/gmd-errors.log
```

---

🔧 التكامل مع قائمة البرامج - GearLever
لإضافة GT-MMC إلى قائمة التطبيقات والوصول إليه من قائمة البرامج، استخدم GearLever - مدير AppImage المتطور:
تثبيت GearLever
bash# تثبيت من Flatpak Hub
flatpak install flathub it.mijorus.gearlever

# أو تحميل الحزمة مباشرة
wget https://github.com/mijorus/gearlever/releases/latest/download/gearlever.flatpak
flatpak install --bundle --user gearlever.flatpak
دمج GT-MMC باستخدام GearLever
الطريقة الرسومية:

افتح GearLever من قائمة التطبيقات
اسحب وأفلت ملف GT-MMC AppImage في نافذة GearLever
اضغط على "Integrate" لإضافة البرنامج للقائمة
ستجد GT-MMC في قائمة البرامج تحت فئة الوسائط المتعددة

الطريقة النصية:
bash# إضافة اختصار (اختياري)
alias gearlever='flatpak run it.mijorus.gearlever'

# دمج كلا الإصدارين
gearlever --integrate ./GT-MMC-x86_64.AppImage
gearlever --integrate ./GT-MMC-i386.AppImage

# عرض التطبيقات المدمجة
gearlever --list-installed

# إدارة التحديثات
gearlever --list-updates
مميزات GearLever مع GT-MMC
---
✅ دمج تلقائي في قائمة التطبيقات مع الأيقونات
🔄 إدارة التحديثات - إشعارات عند توفر إصدارات جديدة
📁 تنظيم الملفات - حفظ منظم في مجلد مخصص
🚀 وصول سريع - تشغيل من قائمة التطبيقات مباشرة
🗑️ إزالة سهلة - حذف البرنامج وجميع ملفاته بأمان
⚙️ إعدادات متقدمة - تحكم في سلوك التطبيق

## 🤝 المساهمة | Contributing

نرحب بمساهماتكم! يرجى اتباع هذه الخطوات:

We welcome contributions! Please follow these steps:

### كيفية المساهمة | How to Contribute
1. **Fork** المشروع | Fork the repository
2. إنشاء **branch** جديد | Create a feature branch
3. **Commit** التغييرات | Commit your changes
4. **Push** إلى البرانش | Push to the branch
5. إنشاء **Pull Request** | Create a Pull Request

### إرشادات المساهمة | Contribution Guidelines
- 📝 **توثيق الكود** | Document your code
- 🧪 **اختبار التغييرات** | Test your changes
- 🌐 **دعم اللغتين** | Support both languages
- 📋 **اتباع نمط الكود** | Follow coding style

---

## 📜 الترخيص | License

هذا المشروع مرخص تحت **GPLv3** - راجع ملف [LICENSE](LICENSE) للتفاصيل.

This project is licensed under **GPLv3** - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 المطور | Author

**gnutux** - المطور الأساسي | Lead Developer

---

## 🙏 شكر وتقدير | Acknowledgments

- **FFmpeg** - محرك تحويل الوسائط | Media conversion engine
- **yt-dlp** - أداة التحميل | Download utility  
- **Zenity/KDialog** - واجهات الحوار الرسومية | GUI dialog interfaces
- **مجتمع Linux** - للدعم والإلهام | Linux community for support and inspiration

---

## 📞 الدعم | Support

إذا واجهت أي مشاكل أو لديك اقتراحات:

If you encounter any issues or have suggestions:

- 🐛 **إبلاغ عن خطأ** | Report bugs: [Issues](https://github.com/YOUR_USERNAME/gt-mmc/issues)
- 💡 **اقتراح ميزة** | Feature requests: [Discussions](https://github.com/YOUR_USERNAME/gt-mmc/discussions)
- 📧 **التواصل المباشر** | Direct contact: your.email@example.com

---

<div align="center">

**⭐ إذا أعجبك المشروع، لا تنس إعطاءه نجمة!**

**⭐ If you like this project, don't forget to give it a star!**

</div>
