import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon, required this.keyboardType,
  });

  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 16, fontFamily: "Cairo"),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,

        prefixIcon: Icon(prefixIcon, color: Color(0xff1380A5)),
        hintStyle: TextStyle(color: Colors.black.withValues(alpha: 0.4)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
