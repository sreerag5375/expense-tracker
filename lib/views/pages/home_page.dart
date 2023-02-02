// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:expense_tracker/views/widgets/income_expense_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/const/app_content_style.dart';
import '/views/widgets/appbar_homepage.dart';
import '/views/widgets/balance_card.dart';
import '/views/widgets/space_60.dart';

class HomePage extends StatelessWidget {
  static ValueNotifier<int> amountNotifier = ValueNotifier(0);
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const AppbarHomePage(),

              //spacer
              const SpaceWidget(height: 15.0),

              //balanceCard
              BalanceCard(balance: amount.round()),
              //

              //income and expense cards

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.deepPurple,
                        border: Border.all(color: Colors.purple.shade100),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    height: _height * 0.16,
                    width: _width * 0.45,
                    child: Center(
                        child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              //print('Add Income');

                              //bottomsheet for add income
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor: Colors.white,
                                isScrollControlled: true,
                                context: context,
                                builder: (_) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              controller: amountController,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .allow(RegExp("[0-9]")),
                                              ],
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  final _amt =
                                                      amountController.text;

                                                  amountNotifier.value =
                                                      int.parse(_amt);

                                                  print(amount);
                                                  Navigator.of(context).pop();
                                                  amountController.clear();
                                                },
                                                child: const Text('Submit'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icon(
                              Icons.arrow_circle_up,
                              size: 40,
                              color: Colors.green.shade600,
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
                    )),
                  ),
                  const IncomeExpenseDetailsCard()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final amountController = TextEditingController();
double amount = 0;
