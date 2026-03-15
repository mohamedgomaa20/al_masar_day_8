class CartItemModel {
  final String title;
  final String subtitle;
  final String image;
  final String status;
  final double price;

  CartItemModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.status,
    required this.price,
  });

  static final List<CartItemModel> cartItems = [
    CartItemModel(
      title: "هاتف سامسونج S26 Ultra",
      subtitle: "سامسونج · هواتف ذكية",
      image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
      price: 122000,
      status: "قيد التنفيذ",
    ),
    CartItemModel(
      title: "لابتوب لينوفو",
      subtitle: "لينوفو · أجهزة كمبيوتر",
      image: "assets/images/laptop_2.webp",
      price: 55500,
      status: "قيد التنفيذ",
    ),
    CartItemModel(
      title: "هاتف سامسونج Z Flip7",
      subtitle: "سامسونج · هواتف قابلة للطي",
      image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
      price: 700000,
      status: "قيد التنفيذ",
    ),
  ];
}
