// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import '../../const/app_content_style.dart';

class IncomeExpenseDetailsCard extends StatelessWidget {
  const IncomeExpenseDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.16,
      width: _width * 0.45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple.shade100),
          borderRadius: const BorderRadius.all(Radius.circular(15.0))),
      child: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  print('add expense');
                },
                icon: const Icon(
                  Icons.arrow_circle_down,
                  color: Colors.red,
                  size: 40,
                )),
            Text(
              'Add Income',
              style: AppTextStyles.contentFontSize,
            ),
            Text(
              '123',
              style: AppTextStyles.number2Style,
            )
          ],
        ),
      ),
    );
  }
}
