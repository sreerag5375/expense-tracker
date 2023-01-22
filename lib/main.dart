import 'package:expense_tracker/views/pages/login_page.dart';
import 'package:flutter/material.dart';

import './views/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      //while using initial route dont use home property
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/second': (context) => const LoginPage(),
      },
    );
  }
}
