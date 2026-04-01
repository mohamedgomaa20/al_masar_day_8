import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../screens/otp_screen.dart';
import '../screens/register_screen.dart';
import 'custom_rich_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginTextFieldAndButtonWidget extends StatefulWidget {
  const LoginTextFieldAndButtonWidget({super.key});

  @override
  State<LoginTextFieldAndButtonWidget> createState() =>
      _LoginTextFieldAndButtonWidgetState();
}

class _LoginTextFieldAndButtonWidgetState
    extends State<LoginTextFieldAndButtonWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
          CustomTextFormField(
            hintText: "رقم الهاتف",
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل رقم الهاتف";
              }
              return null;
            },
            prefixIcon: Icons.person,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            hintText: "كلمة المرور",
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل كلمة المرور";
              }
              return null;
            },
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
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              }
            },
          ),
          SizedBox(height: 15),
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
      ),
    );
  }
}
