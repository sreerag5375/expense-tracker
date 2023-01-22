import 'package:expense_tracker/const/app_content_style.dart';
import 'package:flutter/material.dart';

class LoginTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData prefixIcon;
  final TextInputType inputType;
  const LoginTextFormFieldWidget(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.prefixIcon, required this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        
          labelText: labelText,
          
          labelStyle: AppTextStyles.contentFontSize,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon)),
    );
  }
}
