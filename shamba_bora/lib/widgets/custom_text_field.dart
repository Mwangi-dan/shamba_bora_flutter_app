import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String labelText;
  final bool isPassword;
  final String? Function(String?)? validator;

  CustomTextField({
    required this.controller,
    required this.icon,
    required this.labelText,
    this.isPassword = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: customInputDecoration(labelText, icon),
      obscureText: isPassword,
      validator: validator,
    );
  }
}
