import 'package:al_masar_day_8/features/auth/data/models/user_data_class.dart';
import 'package:al_masar_day_8/features/home/ui/screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_snack_bar.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../logic/auth_bloc/auth_bloc.dart';
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

  final ValueNotifier<bool> isAccepted = ValueNotifier(false);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    isAccepted.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(
      "------------------------ Build RegisterTextFieldAndButtonWidget ------------------------",
    );
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterFailureState) {
          AppSnackBar.error(
            context,
            state.errorMessage ?? "Something went wrong",
          );
        }

        if (state is RegisterSuccessState) {
          AppSnackBar.success(context, "Account created successfully");

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
                  ValueListenableBuilder<bool>(
                    valueListenable: isAccepted,
                    builder: (context, value, child) {
                      return Checkbox(
                        value: value,
                        activeColor: Color(0xff552883),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        onChanged: (value) => isAccepted.value = value ?? false,
                      );
                    },
                  ),
                  CustomRichText(
                    textOne: "أوافق على   ",
                    textTwo: "الشروط و الأحكام",
                    onTapTextTwo: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              ValueListenableBuilder<bool>(
                valueListenable: isAccepted,
                builder: (context, value, child) {
                  return BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      final isLoading = state is RegisterLoadingState;

                      return CustomElevatedButton(
                        text: "إنشاء حساب",
                        isLoading: isLoading,
                        onTap: isLoading || !isAccepted.value
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  FocusScope.of(context).unfocus();
                                  context.read<AuthBloc>().add(
                                    RegisterEvent(
                                      UserDataClass(
                                        email: _emailController.text.trim(),
                                        password: _passwordController.text
                                            .trim(),
                                      ),
                                    ),
                                  );
                                }
                              },
                      );
                    },
                  );
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
        ),
      ),
    );
  }
}
