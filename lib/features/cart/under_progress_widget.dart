import 'package:al_masar_day_8/core/models/cart_model.dart';
import 'package:al_masar_day_8/features/cart/cart_item.dart';
import 'package:flutter/material.dart';

class UnderProgressWidget extends StatelessWidget {
  const UnderProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: ListView.builder(
        itemCount: CartItemModel.cartItems.length,
        itemBuilder: (context, index) =>
            CartItem(cartItem: CartItemModel.cartItems[index]),
      ),
    );
  }
}
