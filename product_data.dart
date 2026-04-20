import '../models/product.dart';

class ProductData {
  static List<Product> getProducts() {
    final List<Map<String, dynamic>> jsonData = [
      {
        "id": 1,
        "name": "Akıllı Telefon X Pro",
        "description":
            "6.7 inç AMOLED ekran, 128GB depolama, 48MP kamera. Güçlü işlemci ile akıcı performans sunar.",
        "price": 24999.99,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Telefon",
        "category": "Elektronik",
        "rating": 4.5,
      },
      {
        "id": 2,
        "name": "Kablosuz Kulaklık",
        "description":
            "Aktif gürültü engelleme, 30 saat pil ömrü. Bluetooth 5.3 teknolojisi ile kesintisiz bağlantı.",
        "price": 1299.99,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Kulaklik",
        "category": "Elektronik",
        "rating": 4.2,
      },
      {
        "id": 3,
        "name": "Spor Ayakkabı Runner",
        "description":
            "Hafif ve esnek taban, nefes alan kumaş. Koşu ve günlük kullanım için ideal.",
        "price": 899.50,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Ayakkabi",
        "category": "Giyim",
        "rating": 4.0,
      },
      {
        "id": 4,
        "name": "Klasik Deri Cüzdan",
        "description":
            "Hakiki deri, 8 kart bölmeli, RFID korumalı. Şık tasarım ile günlük kullanıma uygun.",
        "price": 449.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Cuzdan",
        "category": "Aksesuar",
        "rating": 4.7,
      },
      {
        "id": 5,
        "name": "Mekanik Klavye RGB",
        "description":
            "Cherry MX Blue switch, RGB aydınlatma, alüminyum gövde. Oyun ve yazılım geliştirme için ideal.",
        "price": 1899.00,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Klavye",
        "category": "Elektronik",
        "rating": 4.6,
      },
      {
        "id": 6,
        "name": "Yoga Matı Premium",
        "description":
            "6mm kalınlık, kaymaz yüzey, taşıma kayışı dahil. Pilates ve yoga için uygun.",
        "price": 349.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=YogaMat",
        "category": "Spor",
        "rating": 4.3,
      },
      {
        "id": 7,
        "name": "Termos Bardak 500ml",
        "description":
            "Çift cidarlı paslanmaz çelik, 12 saat sıcak / 24 saat soğuk tutar.",
        "price": 199.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Termos",
        "category": "Ev & Yaşam",
        "rating": 4.1,
      },
      {
        "id": 8,
        "name": "Laptop Çantası 15.6\"",
        "description":
            "Su geçirmez kumaş, darbe emici iç kaplama, USB şarj portu. İş ve seyahat için ideal.",
        "price": 599.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Canta",
        "category": "Aksesuar",
        "rating": 4.4,
      },
      {
        "id": 9,
        "name": "Akıllı Saat Fit",
        "description":
            "Kalp ritmi takibi, uyku analizi, 50+ spor modu. 7 gün pil ömrü.",
        "price": 2499.00,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Saat",
        "category": "Elektronik",
        "rating": 4.3,
      },
      {
        "id": 10,
        "name": "Bluetooth Hoparlör",
        "description":
            "360° ses, IPX7 su geçirmez, 20 saat pil ömrü. Açık hava etkinlikleri için mükemmel.",
        "price": 799.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Hoparlor",
        "category": "Elektronik",
        "rating": 4.5,
      },
      {
        "id": 11,
        "name": "Günlük Sırt Çantası",
        "description":
            "30L kapasite, ergonomik sırt desteği, laptop bölmesi. Okul ve günlük kullanım için.",
        "price": 429.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=SirtCantasi",
        "category": "Aksesuar",
        "rating": 4.0,
      },
      {
        "id": 12,
        "name": "LED Masa Lambası",
        "description":
            "3 renk modu, 10 parlaklık seviyesi, USB şarj portu. Göz yorgunluğunu azaltır.",
        "price": 279.90,
        "imageUrl": "https://via.placeholder.com/300x300.png?text=Lamba",
        "category": "Ev & Yaşam",
        "rating": 4.2,
      },
    ];

    return jsonData.map((json) => Product.fromJson(json)).toList();
  }

  static List<String> getCategories() {
    return [
      'Tümü',
      'Elektronik',
      'Giyim',
      'Aksesuar',
      'Spor',
      'Ev & Yaşam',
    ];
  }
}
