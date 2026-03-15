import 'package:al_masar_day_8/features/cart/cart_item.dart';
import 'package:flutter/material.dart';


class UnderProgressWidget extends StatelessWidget {
  const UnderProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
              price: 122000,
              status: "قيد التنفيذ",
            ),

            CartItem(
              title: "لابتوب لينوفو",
              image: "assets/images/laptop_2.webp",
              price: 55500,
              status: "قيد التنفيذ",
            ),
            CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
              price: 700000,
              status: "قيد التنفيذ",
            ),
            CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
              price: 122000,
              status: "قيد التنفيذ",
            ),

            CartItem(
              title: "لابتوب لينوفو",
              image: "assets/images/laptop_2.webp",
              price: 55500,
              status: "قيد التنفيذ",
            ),
            CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
              price: 700000,
              status: "قيد التنفيذ",
            ), CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-S26-Ultra-5G.webp",
              price: 122000,
              status: "قيد التنفيذ",
            ),

            CartItem(
              title: "لابتوب لينوفو",
              image: "assets/images/laptop_2.webp",
              price: 55500,
              status: "قيد التنفيذ",
            ),
            CartItem(
              title: "هاتف سامسونج",
              image: "assets/images/Samsung-Galaxy-Z-Flip7.webp",
              price: 700000,
              status: "قيد التنفيذ",
            ),
          ],
        ),
      ),
    );
  }
}
