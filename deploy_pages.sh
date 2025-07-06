#!/bin/bash

set -e

echo "🔁 main branch'ine geçiliyor..."
git checkout main

echo "🧹 flutter clean + pub get..."
flutter clean
flutter pub get

echo "⚙️ Web build alınıyor..."
flutter build web

echo "📁 build/web geçici klasöre kopyalanıyor..."
TEMP_DIR=/tmp/web-build
rm -rf $TEMP_DIR
mkdir -p $TEMP_DIR
cp -r build/web/* $TEMP_DIR/

echo "🔀 pages branch'ine geçiliyor..."
git checkout pages

echo "🧨 Tüm takip edilen dosyalar siliniyor (repository zarar görmeden)..."
git ls-files -z | xargs -0 rm -f

echo "📂 Yeni web build kopyalanıyor..."
cp -r $TEMP_DIR/* .

echo "💾 Değişiklikler commit ediliyor..."
git add .
git commit -m "Deploy Flutter Web build from main"

echo "🚀 GitHub Pages'e gönderiliyor..."
git push origin pages --force

echo "✅ Yayın tamamlandı!"

echo "✅ Yayın tamamlandı! GitHub Pages adresini kontrol edebilirsin."
# chmod +x deploy_pages.sh
