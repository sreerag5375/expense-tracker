import 'dart:io';
import 'package:expense_tracker/views/widgets/balanceCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final amountController = TextEditingController();
double amount = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('HOME'),
        leading: IconButton(
            onPressed: () => exit(0), icon: const Icon(Icons.exit_to_app)),
      ),
      body: Center(
        child: Column(
          children: [
            BalanceCard(balance: amount.round()),
            Card(
                color: Colors.yellow,
                child: Text(
                  'Balance:$amount',
                  style: const TextStyle(fontSize: 30),
                )),
            ElevatedButton(
                onPressed: () {
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
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: amountController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]")),
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      final _amt = amountController.text;
                                      setState(() {
                                        amount = double.parse(_amt);
                                      });

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
                child: const Text('open sheet')),
          ],
        ),
      ),
    );
  }
}
