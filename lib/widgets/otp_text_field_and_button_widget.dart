import 'package:flutter/material.dart';

import 'custom_login_button.dart';

class OtpTextFieldAndButtonWidget extends StatelessWidget {
  const OtpTextFieldAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Text(
          "أدخل رمز التحقق OTP",
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 22,
            fontWeight: .w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "لقد أرسلنا الكود الخاص بك إلى 010*****000.\nسينتهي هذا الكود في 00:30",
          textAlign: .center,
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 18,
            fontWeight: .w600,
            color: Colors.white70,
          ),
        ),

        SizedBox(height: 20),

        SizedBox(height: 40),
        CustomLoginButton(text: "تأكيد", onTap: () {}),
        SizedBox(height: 20),
      ],
    );
  }
}
