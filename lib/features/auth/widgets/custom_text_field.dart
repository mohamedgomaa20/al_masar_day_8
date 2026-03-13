import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
    this.isPassword = false,
  });

  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordShown = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 16, fontFamily: "Cairo"),
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword && _isPasswordShown,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordShown = !_isPasswordShown;
                  });
                },
                icon: Icon(
                  _isPasswordShown
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Color(0xff1380A5),
                ),
              )
            : null,
        prefixIcon: Icon(widget.prefixIcon, color: Color(0xff1380A5)),
        hintStyle: TextStyle(color: Colors.black.withValues(alpha: 0.4)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
