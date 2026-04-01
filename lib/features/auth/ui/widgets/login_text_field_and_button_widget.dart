import 'package:al_masar_day_8/features/auth/services/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../../data/models/user_data_class.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
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
              isLoading: _isLoading,
              onTap: _isLoading
                  ? null
                  : () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() => _isLoading = true);
                        FocusScope.of(context).unfocus();
                        await _login(
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
      ),
    );
  }

  Future<void> _login(UserDataClass user) async {
    UserCredential? userCredential = await FirebaseAuthServices.login(user);
    userCredential == null
        ? ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Login Failed"),
              backgroundColor: Colors.red,
            ),
          )
        : ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Login Successfully"),
              backgroundColor: Colors.green,
            ),
          );
  }
}
