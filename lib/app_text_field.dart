import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIcon,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 300,
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(
          fontSize: 15,
          // color: Color(0xFF609966),
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 10.0,
          ),
        ),
        controller: controller,
      ),
    );
  }
}
