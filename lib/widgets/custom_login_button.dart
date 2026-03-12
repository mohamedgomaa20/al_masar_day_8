import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Color(0xff1380A5),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        fixedSize: Size(230, 50),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: .bold, fontFamily: "Cairo"),
      ),
    );
  }
}
