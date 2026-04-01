import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import 'custom_pin_put.dart';

class OtpTextFieldAndButtonWidget extends StatelessWidget {
  const OtpTextFieldAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 65),
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
        CustomPinPut(),

        SizedBox(height: 80),
        CustomElevatedButton(text: "تأكيد", onTap: () {}),
      ],
    );
  }
}
