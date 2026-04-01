import 'package:flutter/material.dart';

import '../../../../core/widgets/background_image_and_container.dart';
import '../widgets/register_text_field_and_button_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageAndContainer(
      child: RegisterTextFieldAndButtonWidget(),
    );
  }
}
