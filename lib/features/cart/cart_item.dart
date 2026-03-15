import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:al_masar_day_8/core/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: .circular(15),
        border: Border.all(color: AppColors.primaryColorLight),
        color: Colors.white,
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 80,
                height: 80,
                color: AppColors.primaryColorLight,
                child: Image.asset(
                  cartItem.image,
                  fit: .contain,
                  errorBuilder: (context, error, stackTrace) => Center(
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    cartItem.title,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: TextStyle(fontSize: 14, fontWeight: .bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                    cartItem.subtitle,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: TextStyle(fontSize: 12, color: AppColors.gray400),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${cartItem.price} ج.م",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffa7dab1).withValues(alpha: 0.5),
              ),
              child: Row(
                children: [
                  CircleAvatar(radius: 3, backgroundColor: Colors.green),
                  SizedBox(width: 5),
                  Text(
                    cartItem.status,
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
