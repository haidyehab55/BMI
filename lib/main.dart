import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1d2136)),
        scaffoldBackgroundColor: Color(0xFF1d2136),
      ),
      home: InputPage(),
    );
  }
}



