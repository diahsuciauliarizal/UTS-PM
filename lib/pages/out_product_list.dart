import 'package:flutter/material.dart';
import 'package:si_inventory/model/product.dart';
import 'package:si_inventory/ui/product.dart';

class OutProductListPage extends StatelessWidget {
  OutProductListPage({super.key});

  final List<OutProductModel> products = [
    const OutProductModel(
        product:
            ProductModel(asset: 'lib/assets/sepatu1.jpg', title: 'Sepatu 1'),
        quantity: 4),
    const OutProductModel(
        product:
            ProductModel(asset: 'lib/assets/sepatu2.jpg', title: 'Sepatu 2'),
        quantity: 1),
    const OutProductModel(
        product:
            ProductModel(asset: 'lib/assets/sepatu3.jpg', title: 'Sepatu 3'),
        quantity: 3),
    const OutProductModel(
        product:
            ProductModel(asset: 'lib/assets/sepatu4.jpg', title: 'Sepatu 4'),
        quantity: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return OutProductList(products: products);
  }
}
