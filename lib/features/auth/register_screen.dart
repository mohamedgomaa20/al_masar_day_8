import 'package:al_masar_day_8/features/auth/widgets/background_image_and_container.dart';
import 'package:al_masar_day_8/features/auth/widgets/register_text_field_and_button_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageAndContainer(
      child: RegisterTextFieldAndButtonWidget(),
    );
  }
}
