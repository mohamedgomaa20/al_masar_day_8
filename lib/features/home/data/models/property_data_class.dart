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
}
