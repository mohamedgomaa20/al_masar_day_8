import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.status,
  });

  final String title;
  final double price;
  final String image;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 100,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: Color(0xffd3d3d1),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .start,
              children: [
                Text(title, style: TextStyle(fontSize: 17)),
                SizedBox(height: 5),
                Text("$price ج.م"),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffa7dab1),
              ),
              child: Text(status),
            ),
          ],
        ),
      ),
    );
  }
}
