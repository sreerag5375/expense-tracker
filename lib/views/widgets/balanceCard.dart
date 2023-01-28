import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BalanceCard extends StatelessWidget {
  final int balance;
  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.amber[300],
        child: SizedBox(
          height: _height * 0.26,
          width: _width,
          child: Center(
              child: Column(
            children: [
              const Text(
                'BALANCE',
                style: TextStyle(fontSize: 40),
              ),
              Text('$balance', style: const TextStyle(fontSize: 40))
            ],
          )),
        ),
      ),
    );
  }
}
