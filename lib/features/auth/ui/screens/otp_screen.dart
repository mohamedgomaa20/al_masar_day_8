import 'package:flutter/material.dart';

import '../../../../core/widgets/background_image_and_container.dart';
import '../widgets/otp_text_field_and_button_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageAndContainer(child: OtpTextFieldAndButtonWidget());
  }
}
