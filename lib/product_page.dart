import 'package:flutter/material.dart';
import 'api_service.dart';

class ProductPage extends StatelessWidget {
  final String endpoint;

  ProductPage({required this.endpoint});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: ApiService().fetchProductDetails(endpoint),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          } else {
            final productDetails = snapshot.data!;
            return ListView(
              children: [
                Text('Product Name: ${productDetails['name']}'),
                Text('Product Price: ${productDetails['price']}'),
                // Daha fazla ürün detayı ekleyin
              ],
            );
          }
        },
      ),
    );
  }
}
