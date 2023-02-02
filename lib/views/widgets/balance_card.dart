// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:expense_tracker/const/app_content_style.dart';
import 'package:expense_tracker/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final int balance;
  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    final paddingBalance = _width * 0.3;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            gradient: LinearGradient(
                colors: [AppColor.burronsColor, Colors.purple.shade200])),
        child: SizedBox(
          height: _height * 0.15,
          width: _width,
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('My Balance',
                    style: AppTextStyles.balanceCardTitleStyle),
              ),
              Padding(
                padding: EdgeInsets.only(left: paddingBalance),
                child: Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.yellow[700],
                      size: 40,
                    ),
                    ValueListenableBuilder(
                        valueListenable: HomePage.amountNotifier,
                        builder: (context, value, _) {
                          return Text('$value', style: AppTextStyles.numberStyle);
                        }),
                    
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
