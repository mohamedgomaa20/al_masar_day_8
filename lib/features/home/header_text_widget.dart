import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              "عرض الكل",
              style: TextStyle(fontSize: 13, color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
