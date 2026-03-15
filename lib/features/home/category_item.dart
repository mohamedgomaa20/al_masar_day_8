import 'package:al_masar_day_8/core/app_colors.dart';
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
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.primaryColorLight,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            category.icon,
            size: 28,
            color: isSelected ? AppColors.white : AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          category.name,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? AppColors.primaryColor : AppColors.gray500,
            fontWeight: isSelected ? .bold : .normal,
          ),
        ),
      ],
    );
  }
}
