import 'package:flutter/material.dart';
import 'package:si_inventory/model/product.dart';
import 'package:si_inventory/ui/product.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  final List<ProductModel> products = [
    const ProductModel(asset: 'lib/assets/sepatu1.jpg', title: "Sepatu 1"),
    const ProductModel(asset: 'lib/assets/sepatu2.jpg', title: "Sepatu 2"),
    const ProductModel(asset: 'lib/assets/sepatu3.jpg', title: "Sepatu 3"),
    const ProductModel(asset: 'lib/assets/sepatu4.jpg', title: "Sepatu 4"),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ProductList(theme: theme, products: products);
  }
}
