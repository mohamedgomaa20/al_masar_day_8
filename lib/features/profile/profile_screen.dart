import 'package:al_masar_day_8/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../features/profile/custom_avatar_image.dart';
import '../../features/profile/custom_text_form_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController(
    text: "محمد جمعه",
  );
  final TextEditingController _emailController = TextEditingController(
    text: "20mohamedgomaa@gmail.com",
  );
  final TextEditingController _phoneController = TextEditingController(
    text: "01002418816",
  );
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomAvatarImage(),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: _nameController,
                  labelText: "الإسم",
                  prefixIcon: Icons.person,
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: _emailController,

                  labelText: "البريد الإلكتروني",
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: _phoneController,
                  labelText: "رقم الهاتف",
                  prefixIcon: Icons.phone,
                ),
                SizedBox(height: 20),
                CustomElevatedButton(onPressed: (){}, text: "تعديل الحساب"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}