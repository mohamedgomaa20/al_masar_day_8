import 'package:al_masar_day_8/core/models/cart_model.dart';
import 'package:al_masar_day_8/features/cart/cart_item.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class UnderProgressWidget extends StatelessWidget {
  const UnderProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "الطلبات الحالية",
                  style: TextStyle(fontSize: 14, color: AppColors.gray500),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryColorLight,
                  ),
                  child: Text(
                    "${CartItemModel.cartItems.length} طلبات",
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: CartItemModel.cartItems.length,
              itemBuilder: (context, index) =>
                  CartItem(cartItem: CartItemModel.cartItems[index]),
            ),
          ),
        ],
      ),
    );
  }
}
