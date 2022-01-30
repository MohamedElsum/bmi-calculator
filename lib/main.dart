import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0FF0A0E21),
        scaffoldBackgroundColor: Color(0x0FF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

