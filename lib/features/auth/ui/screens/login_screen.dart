import 'package:flutter/material.dart';

import '../../../../core/widgets/background_image_and_container.dart';
import '../widgets/login_text_field_and_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageAndContainer(child: LoginTextFieldAndButtonWidget());
  }
}
