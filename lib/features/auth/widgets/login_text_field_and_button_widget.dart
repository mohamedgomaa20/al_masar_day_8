import 'package:al_masar_day_8/features/auth/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../otp_screen.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import 'custom_rich_text.dart';
import 'custom_text_field.dart';

class LoginTextFieldAndButtonWidget extends StatelessWidget {
  const LoginTextFieldAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "أهلا بك نحن سعداء بعودتك",
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 22,
            fontWeight: .w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "من فضلك قم بتسجيل الدخول",
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 22,
            fontWeight: .w600,
            color: Colors.white70,
          ),
        ),

        SizedBox(height: 25),
        CustomTextField(
          hintText: "رقم الهاتف",
          prefixIcon: Icons.person,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "كلمة المرور",
          prefixIcon: Icons.lock,
          keyboardType: TextInputType.visiblePassword,
          isPassword: true,
        ),
        SizedBox(height: 25),
        Align(
          alignment: .centerLeft,
          child: Text(
            "هل نسيت كلمة المرور ؟",
            style: TextStyle(
              fontFamily: "Tajawal",
              fontSize: 16,
              fontWeight: .bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 40),
        CustomElevatedButton(
          text: "تسجيل الدخول",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtpScreen()),
            );
          },
        ),
        SizedBox(height: 20),
        CustomRichText(
          textOne: "ليس لديك حساب ؟   ",
          textTwo: "إنشاء حساب",
          onTapTextTwo: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen()),
              );
            },
        ),
      ],
    );
  }
}
