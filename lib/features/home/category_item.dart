import 'package:flutter/material.dart';

import '../../core/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: .all(15),

          decoration: BoxDecoration(
            color: Color(0xffa7dab1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(category.icon, size: 40),
        ),
        SizedBox(height: 5),
        Text(category.name, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
