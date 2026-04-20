import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  const ProductDetailScreen({super.key, required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ürün görseli
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.shade50,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Icon(_getCategoryIcon(product.category), size: 120, color: Theme.of(context).colorScheme.primary.withOpacity(0.5)));
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategori badge
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(product.category, style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 12, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 12),
                  Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  // Rating
                  Row(children: [
                    ...List.generate(5, (index) {
                      return Icon(
                        index < product.rating.floor() ? Icons.star : (index < product.rating ? Icons.star_half : Icons.star_border),
                        color: Colors.amber, size: 20,
                      );
                    }),
                    const SizedBox(width: 8),
                    Text('${product.rating}', style: TextStyle(color: Colors.grey.shade600, fontSize: 14)),
                  ]),
                  const SizedBox(height: 16),
                  Text('\$${product.price.toStringAsFixed(0)}', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
                  const SizedBox(height: 20),
                  const Text('Ürün Açıklaması', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(product.description, style: TextStyle(fontSize: 15, color: Colors.grey.shade700, height: 1.5)),
                  const SizedBox(height: 24),
                  // Bilgi kartları
                  Row(children: [
                    _buildInfoCard(context, Icons.local_shipping_outlined, 'Ücretsiz\nKargo'),
                    const SizedBox(width: 12),
                    _buildInfoCard(context, Icons.verified_user_outlined, '2 Yıl\nGaranti'),
                    const SizedBox(width: 12),
                    _buildInfoCard(context, Icons.replay_outlined, '15 Gün\nİade'),
                  ]),
                  const SizedBox(height: 24),
                  // Sepete ekle butonu
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        onAddToCart(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${product.name} sepete eklendi!'),
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            action: SnackBarAction(label: 'Sepete Git', textColor: Colors.white, onPressed: () => Navigator.pushNamed(context, '/cart')),
                          ),
                        );
                      },
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text('Sepete Ekle', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.grey.shade50, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade200)),
        child: Column(children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary, size: 28),
          const SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ]),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'iPhone': return Icons.phone_iphone;
      case 'Mac': return Icons.laptop_mac;
      case 'iPad': return Icons.tablet_mac;
      case 'Watch': return Icons.watch;
      case 'Aksesuar': return Icons.headphones;
      default: return Icons.category;
    }
  }
}
