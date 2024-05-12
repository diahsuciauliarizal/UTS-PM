class ProductModel {
  const ProductModel({
    required this.asset,
    required this.title,
  });

  final String asset;
  final String title;
}

class OutProductModel {
  const OutProductModel({
    required this.product,
    required this.quantity,
  });

  final ProductModel product;
  final int quantity;
}
