import 'package:flutter/material.dart';
import 'package:myfinance/pages/Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',

      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: Color(0xff00b2e7),
          secondary: Color(0xffe064e4),
          tertiary: Color(0xffff8d6c),
          outline: Colors.grey.shade400,
        ),
      ),

      home: const HomePage(),
    );
  }
}
