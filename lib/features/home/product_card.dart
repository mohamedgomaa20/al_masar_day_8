import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:al_masar_day_8/core/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.isFavorite = false,
  });

  final ProductModel product;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primaryColorLight),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Container(
                    width: .infinity,
                    color: AppColors.primaryColorLight,
                    child: Image.asset(
                      product.image,
                      fit: .contain,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: 8,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: .all(8),
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: AppColors.white,
                        border: .all(
                          color: isFavorite
                              ? AppColors.primaryColor
                              : AppColors.gray200,
                        ),
                      ),
                      child: Icon(
                        size: 22,
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite
                            ? AppColors.primaryColor
                            : AppColors.gray500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  product.category,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13, color: AppColors.gray400),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "${product.price} ج.م",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.primaryColor,
                        fontWeight: .bold,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: .all(8),
                        decoration: BoxDecoration(
                          borderRadius: .circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Icon(Icons.add, color: AppColors.white,size: 18,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
