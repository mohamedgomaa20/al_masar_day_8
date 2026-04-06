import 'package:flutter/material.dart';

import '../../../home/data/models/property_data_class.dart';

class PropertiesItem extends StatelessWidget {
  const PropertiesItem({super.key, required this.property});

  final PropertyDataClass property;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colors.primaryContainer,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      property.imageUrl,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (property.isFeatured)
                    Positioned(
                      top: 10,
                      left: 10,
                      child: _badge(context, "Featured", colors.primary),
                    ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: _badge(
                      context,
                      property.isForSale ? "Sell" : "Rent",
                      colors.onSurface,
                      textColor: colors.primaryContainer,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              _badge(
                context,
                "Deactive",
                Color(0xffEE962C),
                fontSize: 18,
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.home),
                              SizedBox(width: 4),
                              Text(property.type),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "\$${property.price}",
                            style: TextStyle(
                              color: colors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: colors.primaryContainer,
                        child: Icon(
                          property.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    property.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      const SizedBox(width: 4),
                      Text(
                        property.address,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _badge(
  BuildContext context,
  String text,
  Color color, {
  Color textColor = Colors.white,
  EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 4,
  ),
  double fontSize = 12,
}) {
  return Container(
    padding: padding,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: TextStyle(color: textColor, fontSize: fontSize),
    ),
  );
}
