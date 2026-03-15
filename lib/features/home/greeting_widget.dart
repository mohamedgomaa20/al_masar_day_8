import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "مرحباً بك 👋",
            style: TextStyle(fontSize: 16, color: AppColors.gray500),
          ),
          SizedBox(height: 3),
          Text(
            username,
            style: const TextStyle(fontSize: 20, fontWeight: .bold),
          ),
        ],
      ),
    );
  }
}
