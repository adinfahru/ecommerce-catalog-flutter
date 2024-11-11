import 'dart:convert';
import 'package:http/http.dart' as http;
import 'product_model.dart';

class ApiService {
  static const String apiUrl = "https://fakestoreapi.com/products";

  // Method untuk fetch produk
  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((data) => ProductModel.fromJson(data)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
