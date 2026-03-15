class ProductModel {
  final String name;
  final String category;
  final String image;
  final double price;

  ProductModel({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
  });

  static List<ProductModel> products = [
    ProductModel(
      name: "Samsung S26 Ultra",
      image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
      price: 122000,
      category: "سامسونج · هواتف",
    ),
    ProductModel(
      name: "لابتوب لينوفو",
      image: "assets/images/laptop_2.webp",
      price: 55500,
      category: "لينوفو · لابتوبات",
    ),
    ProductModel(
      name: "Samsung Z Flip7",
      image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
      price: 700000,
      category: "سامسونج · هواتف",
    ),
    ProductModel(
      name: "Samsung S26 Ultra",
      image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
      price: 122000,
      category: "سامسونج · هواتف",
    ),
    ProductModel(
      name: "لابتوب لينوفو",
      image: "assets/images/laptop_2.webp",
      price: 55500,
      category: "لينوفو · لابتوبات",
    ),
    ProductModel(
      name: "Samsung Z Flip7",
      image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
      price: 700000,
      category: "سامسونج · هواتف",
    ),
  ];
}
