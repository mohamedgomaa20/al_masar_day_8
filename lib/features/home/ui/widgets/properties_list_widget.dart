import 'package:flutter/material.dart';

import '../../data/models/property_data_class.dart';
import '../widgets/property_card.dart';

class PropertiesListWidget extends StatelessWidget {
  const PropertiesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyDataClass> properties = [
      PropertyDataClass(
        id: "1",
        title: "Luxuries Haven Villa",
        type: "Bungalow",
        price: 2500000,
        address: "123 Palm Avenue, Dubai",
        imageUrl:
        "https://images.unsplash.com/photo-1568605114967-8130f3a36994",
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
        imageUrl:
        "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
        isFeatured: true,
        isForSale: true,
        isFavorite: true,
      ),
    ];

    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: properties.length,
        itemBuilder: (_, index) {
          return PropertyCard(property: properties[index]);
        },
      ),
    );
  }
}