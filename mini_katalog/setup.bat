@echo off
echo ======================================
echo  Mini Katalog - Flutter Proje Kurulumu
echo ======================================
echo.

echo [1/3] Flutter projesi olusturuluyor...
flutter create mini_katalog_temp
echo.

echo [2/3] Kodlar kopyalaniyor...
xcopy /E /Y lib\* mini_katalog_temp\lib\
copy /Y pubspec.yaml mini_katalog_temp\pubspec.yaml
xcopy /E /Y assets\* mini_katalog_temp\assets\
xcopy /E /Y test\* mini_katalog_temp\test\
copy /Y README.md mini_katalog_temp\README.md
copy /Y analysis_options.yaml mini_katalog_temp\analysis_options.yaml
echo.

echo [3/3] Bagimliliklar yukleniyor...
cd mini_katalog_temp
flutter pub get
echo.

echo ======================================
echo  KURULUM TAMAMLANDI!
echo  Calistirmak icin:
echo    cd mini_katalog_temp
echo    flutter run
echo ======================================
pause
