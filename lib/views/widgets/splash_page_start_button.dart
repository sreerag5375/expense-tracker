import 'package:expense_tracker/const/app_content_style.dart';
import 'package:flutter/material.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/login');
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.burronsColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
      child: const Text(
        'start',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
