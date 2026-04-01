import 'package:al_masar_day_8/features/auth/data/models/user_data_class.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../../services/firebase_auth_services.dart';
import '../screens/login_screen.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

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
            isLoading: _isLoading,
            onTap: _isLoading
                ? null
                : () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() => _isLoading = true);
                      FocusScope.of(context).unfocus();
                      await _register(
                        UserDataClass(
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim(),
                        ),
                      );
                      setState(() => _isLoading = false);
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

  Future<void> _register(UserDataClass user) async {
    UserCredential? userCredential = await FirebaseAuthServices.register(user);
    userCredential == null
        ? ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Register Failed"),
              backgroundColor: Colors.red,
            ),
          )
        : ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Register Successfully"),
              backgroundColor: Colors.green,
            ),
          );
  }
}
