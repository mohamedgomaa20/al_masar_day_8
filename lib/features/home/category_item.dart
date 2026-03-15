import 'package:flutter/material.dart';

import '../../core/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    this.isSelected = false,
  });

  final CategoryModel category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: .all(15),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff2d5a3d) : Color(0xffe8f5ed),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            category.icon,
            size: 28,
            color: isSelected ? Colors.white : Color(0xff2d5a3d),
          ),
        ),
        SizedBox(height: 5),
        Text(
          category.name,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Color(0xff2d5a3d) : Colors.grey.shade500,
            fontWeight: isSelected ? .bold : .normal,
          ),
        ),
      ],
    );
  }
}
