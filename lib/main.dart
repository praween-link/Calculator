import 'package:flutter/material.dart';

import 'home.dart';

void main(){
  runApp(Calculator());
}

class Calculator extends StatelessWidget{
  @override 
  Widget build(BuildContext context) => MyCalculator();
}

class MyCalculator extends StatefulWidget {
  @override 
  _MyCalculatorState createState() => _MyCalculatorState();
}
class _MyCalculatorState extends State<MyCalculator> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Home(),
      ),
    );
  }
}