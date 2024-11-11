// lib/product_detail_page.dart
import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar Produk
                Image.network(product.image),
                const SizedBox(height: 8),

                // Judul Produk
                Text(product.title),
                const SizedBox(height: 16),

                // Harga Produk
                Text('\$${product.price.toStringAsFixed(2)}'),
                const SizedBox(height: 16),

                // Deskripsi Produk
                Text(product.description),
                const SizedBox(height: 16),

                // Tombol "Buy Now"
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Buy Now clicked!'),
                      ),
                    );
                  },
                  child: const Text('Buy Now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
