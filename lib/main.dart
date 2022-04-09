import 'package:flutter/material.dart';
import 'screens/input.dart';
import 'screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1d2136)),
        scaffoldBackgroundColor: Color(0xFF1d2136),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => ResultPage(),
      },
    );
  }
}