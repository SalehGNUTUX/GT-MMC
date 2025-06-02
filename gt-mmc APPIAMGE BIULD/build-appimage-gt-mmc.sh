#!/bin/bash

set -e

# إعداد المتغيرات
APP=gt-mmc
APPNAME="GT-MMC"
VERSION=0.1
APPDIR=GT-MMC.AppDir
ICON_NAME=gt-mmc
DESKTOP_FILE=$APPDIR/usr/share/applications/${APP}.desktop
EXECUTABLE=$APPDIR/usr/bin/$APP
LINUXDEPLOY=./linuxdeploy-x86_64.AppImage

# التحقق من وجود linuxdeploy
if [ ! -f "$LINUXDEPLOY" ]; then
    echo "❌ لم يتم العثور على linuxdeploy. حمّله من:"
    echo "➡ https://github.com/linuxdeploy/linuxdeploy/releases"
    exit 1
fi

chmod +x $LINUXDEPLOY

# التحقق من المكونات
echo "🔍 التحقق من محتويات $APPDIR..."

[[ -f "$EXECUTABLE" ]] || { echo "❌ الملف التنفيذي غير موجود: $EXECUTABLE"; exit 1; }
[[ -f "$DESKTOP_FILE" ]] || { echo "❌ ملف .desktop غير موجود: $DESKTOP_FILE"; exit 1; }

# التحقق من وجود أيقونة واحدة على الأقل
ICON_PATH="$APPDIR/usr/share/icons/hicolor"
if ! find "$ICON_PATH" -name "${ICON_NAME}.png" | grep -q .; then
    echo "❌ لم يتم العثور على أيقونة باسم: $ICON_NAME.png"
    exit 1
fi

echo "✅ جاهز لتوليد الحزمة..."

# توليد AppImage
ARCH=x86_64 \
$LINUXDEPLOY \
  --appdir $APPDIR \
  --desktop-file $DESKTOP_FILE \
  --icon-file $ICON_PATH/256x256/apps/${ICON_NAME}.png \
  --output appimage

echo "🎉 تم توليد ${APPNAME}-${VERSION}-x86_64.AppImage بنجاح."
