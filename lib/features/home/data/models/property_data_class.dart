class PropertyDataClass {
  final String id;
  final String title;
  final String type;
  final double price;
  final String address;
  final String imageUrl;
  final bool isFeatured;
  final bool isForSale;
  final bool isFavorite;

  PropertyDataClass({
    required this.id,
    required this.title,
    required this.type,
    required this.price,
    required this.address,
    required this.imageUrl,
    required this.isFeatured,
    required this.isForSale,
    required this.isFavorite,
  });

  factory PropertyDataClass.fromJson(Map<String, dynamic> json) {
    return PropertyDataClass(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      type: json['type'] ?? '',
      price: (json['price'] as num).toDouble(),
      address: json['address'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      isFeatured: json['isFeatured'] ?? false,
      isForSale: json['isForSale'] ?? true,
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'type': type,
      'price': price,
      'address': address,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'isForSale': isForSale,
      'isFavorite': isFavorite,
    };
  }

  static List<PropertyDataClass> properties = [
    PropertyDataClass(
      id: "1",
      title: "Luxuries Haven Villa",
      type: "Bungalow",
      price: 2500000,
      address: "123 Palm Avenue, Dubai",
      imageUrl: "https://images.unsplash.com/photo-1568605114967-8130f3a36994",
      isFeatured: true,
      isForSale: true,
      isFavorite: false,
    ),
    PropertyDataClass(
      id: "2",
      title: "Oceanfront Villa",
      type: "Penthouse",
      price: 3000000,
      address: "123 Seaview, Miami",
      imageUrl: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
      isFeatured: true,
      isForSale: true,
      isFavorite: true,
    ),
    PropertyDataClass(
      id: "1",
      title: "Luxuries Haven Villa",
      type: "Bungalow",
      price: 2500000,
      address: "123 Palm Avenue, Dubai",
      imageUrl: "https://images.unsplash.com/photo-1568605114967-8130f3a36994",
      isFeatured: true,
      isForSale: true,
      isFavorite: false,
    ),
    PropertyDataClass(
      id: "2",
      title: "Oceanfront Villa",
      type: "Penthouse",
      price: 3000000,
      address: "123 Seaview, Miami",
      imageUrl: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
      isFeatured: true,
      isForSale: true,
      isFavorite: true,
    ),
    PropertyDataClass(
      id: "1",
      title: "Luxuries Haven Villa",
      type: "Bungalow",
      price: 2500000,
      address: "123 Palm Avenue, Dubai",
      imageUrl: "https://images.unsplash.com/photo-1568605114967-8130f3a36994",
      isFeatured: true,
      isForSale: true,
      isFavorite: false,
    ),
    PropertyDataClass(
      id: "2",
      title: "Oceanfront Villa",
      type: "Penthouse",
      price: 3000000,
      address: "123 Seaview, Miami",
      imageUrl: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
      isFeatured: true,
      isForSale: true,
      isFavorite: true,
    ),
  ];
}
