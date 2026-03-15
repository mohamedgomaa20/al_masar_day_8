import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
    required this.prefixIcon,
  }) : _nameController = controller;

  final TextEditingController _nameController;
  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      enabled: false,
      decoration: InputDecoration(
        label: Text(labelText),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
