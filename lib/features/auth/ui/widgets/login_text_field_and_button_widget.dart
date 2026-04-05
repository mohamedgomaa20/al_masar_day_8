import 'package:al_masar_day_8/core/utils/app_snack_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../home/ui/screens/home_screen.dart';
import '../../data/models/user_data_class.dart';
import '../../logic/auth_bloc/auth_bloc.dart';
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginFailureState) {
          AppSnackBar.error(
            context,
            state.errorMessage ?? "Something went wrong",
          );
        }

        if (state is LoginSuccessState) {
          AppSnackBar.success(context, "Login Successfully");
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (route) => false,
          );
        }
        if (state is LoginWithGoogleFailureState) {
          AppSnackBar.error(
            context,
            state.errorMessage ?? "Google login failed",
          );
        }

        if (state is LoginWithGoogleSuccessState) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (route) => false,
          );
        }
      },
      child: SingleChildScrollView(
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

              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final isLoading = state is LoginLoadingState;

                  return CustomElevatedButton(
                    text: "تسجيل الدخول",
                    isLoading: isLoading,
                    onTap: isLoading
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(
                                LoginEvent(
                                  UserDataClass(
                                    email: _emailController.text.trim(),
                                    password: _passwordController.text.trim(),
                                  ),
                                ),
                              );
                            }
                          },
                  );
                },
              ),
              SizedBox(height: 10),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final isLoading = state is LoginWithGoogleLoadingState;

                  return CustomElevatedButton(
                    text: "التسجيل باستخدام جوجل",
                    isLoading: isLoading,
                    onTap: isLoading
                        ? null
                        : () {
                            context.read<AuthBloc>().add(
                              LoginWithGoogleEvent(),
                            );
                          },
                  );
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
      ),
    );
  }
}
