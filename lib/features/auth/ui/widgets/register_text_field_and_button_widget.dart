import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../screens/login_screen.dart';
import '../screens/otp_screen.dart';
import 'custom_rich_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class RegisterTextFieldAndButtonWidget extends StatefulWidget {
  const RegisterTextFieldAndButtonWidget({super.key});

  @override
  State<RegisterTextFieldAndButtonWidget> createState() =>
      _RegisterTextFieldAndButtonWidgetState();
}

class _RegisterTextFieldAndButtonWidgetState
    extends State<RegisterTextFieldAndButtonWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل الاسم كامل";
              }
              return null;
            },
            hintText: "الإسم كامل",
            prefixIcon: Icons.person,
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            hintText: "البريد الإلكتروني",
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل البريد الإلكتروني";
              }
              return null;
            },
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            controller: _phoneController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل رقم الهاتف";
              }
              return null;
            },
            hintText: "رقم الموبايل مع رمز الدولة بدون (+)",
            prefixIcon: Icons.phone,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "من فضلك أدخل كلمة السر";
              }
              return null;
            },
            hintText: "كلمة السر",
            prefixIcon: Icons.lock,
            keyboardType: TextInputType.visiblePassword,
            isPassword: true,
          ),
          SizedBox(height: 5),
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
          SizedBox(height: 10),
          CustomElevatedButton(
            text: "إنشاء حساب",
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              }
            },
          ),
          SizedBox(height: 10),
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
      ),
    );
  }
}
