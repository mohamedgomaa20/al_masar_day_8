import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.keyboardType,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  final String hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isPasswordShown = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
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
