import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF6F9940); // Green color
const Color accentColor = Color(0xFF424D18); // Dark green/brown color
const Color backgroundColor = Color(0xFFF3ECD0); // Light background color
const Color textColor = Color(0xFF3D3D3D); // Dark text color

TextStyle headingStyle = TextStyle(
  color: textColor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

TextStyle subheadingStyle = TextStyle(
  color: textColor,
  fontSize: 18,
);

TextStyle buttonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

InputDecoration customInputDecoration(String labelText, IconData icon) {
  return InputDecoration(
    prefixIcon: Icon(icon, color: accentColor),
    labelText: labelText,
    labelStyle: TextStyle(color: accentColor),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}
