import 'package:al_masar_day_8/features/auth/widgets/login_text_field_and_button_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/background_image_and_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageAndContainer(child: LoginTextFieldAndButtonWidget());
  }
}
