import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        leading:
            IconButton(onPressed: () => exit(0), icon: Icon(Icons.exit_to_app)),
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
