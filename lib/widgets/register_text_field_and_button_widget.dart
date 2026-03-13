import 'package:al_masar_day_8/screens/otp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../features/auth/login_screen.dart';
import 'custom_login_button.dart';
import 'custom_rich_text.dart';
import 'custom_text_field.dart';

class RegisterTextFieldAndButtonWidget extends StatelessWidget {
  const RegisterTextFieldAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: "الإسم كامل",
          prefixIcon: Icons.person,
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "البريد الإلكتروني",
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "رقم الموبايل مع رمز الدولة بدون (+)",
          prefixIcon: Icons.phone,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "كلمة السر",
          prefixIcon: Icons.lock,
          keyboardType: TextInputType.visiblePassword,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Checkbox(
              value: false,
              activeColor: Color(0xff552883),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              onChanged: (value) {},
            ),
            CustomRichText(
              textOne: "أوافق على   ",
              textTwo: "الشروط و الأحكام",
              onTapTextTwo: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
        SizedBox(height: 20),
        CustomLoginButton(
          text: "إنشاء حساب",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtpScreen()),
            );
          },
        ),
        SizedBox(height: 20),
        CustomRichText(
          textOne: "لديك حساب ؟    ",
          textTwo: "تسجيل دخول",
          onTapTextTwo: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
        ),
      ],
    );
  }
}
