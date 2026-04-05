import 'package:al_masar_day_8/features/home/data/models/property_data_class.dart';
import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final PropertyDataClass property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: 260,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colors.primaryContainer,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  property.imageUrl,
                  height: 160,
                  width: double.infinity,
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
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: colors.primaryContainer,
                  child: Icon(
                    property.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: colors.primary,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      property.type,
                      style: TextStyle(color: colors.onSurface),
                    ),
                    Text(
                      "\$${property.price}",
                      style: TextStyle(
                        color: colors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  property.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: colors.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      property.address,
                      style: TextStyle(color: colors.onSurface, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 4),
                    Icon(Icons.location_on, size: 16, color: colors.onSurface),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _badge(
    BuildContext context,
    String text,
    Color color, {
    Color textColor = Colors.white,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 12)),
    );
  }
}
