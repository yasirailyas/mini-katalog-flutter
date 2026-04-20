# Mini Katalog Uygulaması

## Proje Açıklaması
Mini Katalog, Flutter ile geliştirilmiş bir e-ticaret katalog uygulamasıdır. Ürünler wantapi.com API'sinden alınmaktadır.

## Özellikler
- Ürün listeleme (GridView)
- Kategori bazlı filtreleme (iPhone, Mac, iPad, Watch, Aksesuar)
- Ürün arama
- Ürün detay sayfası
- Sepet sayfası (ekleme, silme, toplam fiyat)
- Named Routes ile sayfa geçişleri
- Route Arguments ile veri taşıma
- JSON model yapısı (fromJson / toJson)
- Network üzerinden görsel yükleme (Image.network)

## Kullanılan Flutter Sürümü
- Flutter SDK: >=3.0.0
- Dart SDK: >=3.0.0

## Veri Kaynağı
- Ürün verileri: https://wantapi.com/products.php

## Çalıştırma Adımları
1. Flutter SDK'nın kurulu olduğundan emin olun
2. Projeyi klonlayın: `git clone https://github.com/yasirailyas/mini-katalog-flutter.git`
3. Proje dizinine gidin: `cd mini-katalog-flutter`
4. Bağımlılıkları yükleyin: `flutter pub get`
5. Uygulamayı çalıştırın: `flutter run`

## Proje Yapısı
lib/
├── main.dart
├── models/
│   └── product.dart
├── data/
│   └── product_data.dart
├── screens/
│   ├── home_screen.dart
│   ├── product_detail_screen.dart
│   └── cart_screen.dart
└── widgets/
└── product_card.dart