import 'package:al_masar_day_8/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomTextField(text: "حقل البحث", suffixIcon: Icons.search),

                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
