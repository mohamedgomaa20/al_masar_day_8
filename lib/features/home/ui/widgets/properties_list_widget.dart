import 'package:flutter/material.dart';

import '../../data/models/property_data_class.dart';
import '../widgets/property_card.dart';

class PropertiesListWidget extends StatelessWidget {
  const PropertiesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PropertyDataClass.properties.length,
        itemBuilder: (_, index) {
          return PropertyCard(property: PropertyDataClass.properties[index]);
        },
      ),
    );
  }
}
