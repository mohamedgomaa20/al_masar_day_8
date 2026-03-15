import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAvatarImage extends StatelessWidget {
  const CustomAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 78,
      backgroundColor: AppColors.primaryColor,
      child: CircleAvatar(
        radius: 75,
        backgroundImage: AssetImage("assets/images/avater.png"),
      ),
    );
  }
}
