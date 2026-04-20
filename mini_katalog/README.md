# Mini Katalog Uygulaması

## Proje Açıklaması
Mini Katalog, Flutter ile geliştirilmiş basit bir e-ticaret katalog uygulamasıdır.

## Özellikler
- Ürün listeleme (GridView)
- Kategori bazlı filtreleme
- Ürün arama
- Ürün detay sayfası
- Sepete ekleme simülasyonu
- Named Routes ile sayfa geçişleri
- Route Arguments ile veri taşıma
- JSON model yapısı (fromJson / toJson)

## Kullanılan Flutter Sürümü
- Flutter SDK: >=3.0.0
- Dart SDK: >=3.0.0

## Çalıştırma Adımları
1. Flutter SDK'nın kurulu olduğundan emin olun
2. Projeyi klonlayın: `git clone <repo-url>`
3. Proje dizinine gidin: `cd mini_katalog`
4. Bağımlılıkları yükleyin: `flutter pub get`
5. Uygulamayı çalıştırın: `flutter run`

## Proje Yapısı
```
lib/
├── main.dart
├── models/
│   └── product.dart
├── data/
│   └── product_data.dart
├── screens/
│   ├── home_screen.dart
│   └── product_detail_screen.dart
└── widgets/
    └── product_card.dart
```
