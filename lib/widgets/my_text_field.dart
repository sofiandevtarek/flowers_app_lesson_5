import 'package:flowers/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.obscureText,
    required this.keyboardType,
    required this.hintText,
  });

  final bool obscureText;
  final TextInputType keyboardType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: btngreen,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[300],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
