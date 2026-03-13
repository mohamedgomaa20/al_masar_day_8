import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.onTapTextTwo,
  });

  final String textOne;
  final String textTwo;
  final GestureRecognizer onTapTextTwo;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textOne,
            style: TextStyle(color: Colors.black, fontFamily: "Cairo"),
          ),
          TextSpan(
            text: textTwo,
            style: TextStyle(fontFamily: "Cairo"),
            recognizer: onTapTextTwo,
          ),
        ],
      ),
    );
  }
}
