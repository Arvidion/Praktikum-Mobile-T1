import 'package:flutter/material.dart';
import 'package:flutter_application_2/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.controller,
      required this.textInputType,
      super.key,
      required this.textInputAction,
      required this.hint, 
      this.isSecure = false});

  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: isSecure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.darkGrey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.darkGrey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hint,
        hintStyle: TextStyles.body.copyWith(fontSize: 12),
      ),
    );
  }
}
