import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:si_inventory/model/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.theme,
    required this.products,
  });

  final ThemeData theme;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Data Barang',
                style: TextStyle(
                  fontSize: theme.textTheme.headlineMedium!.fontSize,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                )),
          ),
        ),
        Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10.0),
              primary: false,
              children: [
                for (var product in products)
                  ProductCard(
                    assetPath: product.asset,
                    productName: product.title,
                    theme: theme,
                  )
              ]),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.assetPath,
      required this.productName,
      required this.theme});

  final String assetPath;
  final String productName;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(assetPath),
          ),
        ));
  }
}

class OutProductList extends StatelessWidget {
  const OutProductList({super.key, required this.products});

  final List<OutProductModel> products;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Data Barang Keluar',
                    style: TextStyle(
                      fontSize: theme.textTheme.headlineMedium!.fontSize,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    )))),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              for (var product in products) OutProductCard(outProduct: product)
            ],
          ),
        ),
      ],
    );
  }
}

class OutProductCard extends StatelessWidget {
  const OutProductCard({super.key, required this.outProduct});

  final OutProductModel outProduct;
  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: SizedBox(
                    width: 64.0,
                    child: Image.asset(outProduct.product.asset,
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      outProduct.product.title,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Center(
                  child: Text('-${outProduct.quantity.toString()}',
                      style: TextStyle(
                          color: Colors.red[200], fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ));
  }
}
