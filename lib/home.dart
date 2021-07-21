import 'package:flutter/material.dart';

import 'widgets/calculatorWidget.dart';
//100 : 0xFFBBDEFB, 200 : 0xFF90CAF9, 300 : 0xFF64B5F6, 400 : 0xFF42A5F5, 900 :0xFF0D47A1
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  double firstNumber = 0;
  double secondNumber = 0;
  String inputDisplay = '';
  String history = '';
  String operation = '';
  String result = '';
  String listOfInput = '';

  void clickOnButtons(btnValue){
    // print(btnValue);
    if(btnValue == 'AC'){
      firstNumber = 0;
      secondNumber = 0;
      history = '';
      inputDisplay = '';
      operation = '';
      result = '';
    }else if(btnValue == 'C'){
      firstNumber = 0;
      secondNumber = 0;
      inputDisplay = '';
      operation = '';
      result = '';
    }else if(btnValue == '<'){
      result = result.substring(0, result.length-1);
    }else if(btnValue == '+' || btnValue == '-' || btnValue == 'x' || btnValue == '/'){
      firstNumber = double.parse(result);
      result = '';
      operation = btnValue;
    }else if(btnValue == '='){
      secondNumber = double.parse(inputDisplay);
      if(operation == '+'){
        result = (firstNumber + secondNumber).toString();
        String fns = firstNumber.toString();
        String sns = secondNumber.toString();
        if(fns.substring(fns.length - 2, fns.length) == '.0' && sns.substring(sns.length - 2, sns.length) == '.0'){
          fns = fns.substring(0, fns.length - 2);
          sns = sns.substring(0, sns.length - 2);
          history = fns + operation + sns;
        }else{
          history = firstNumber.toString() + operation + secondNumber.toString();
        }
      }else if(operation == '-'){
        result = (firstNumber - secondNumber).toString();
        String fns = firstNumber.toString();
        String sns = secondNumber.toString();
        if(fns.substring(fns.length - 2, fns.length) == '.0' && sns.substring(sns.length - 2, sns.length) == '.0'){
          fns = fns.substring(0, fns.length - 2);
          sns = sns.substring(0, sns.length - 2);
          history = fns + operation + sns;
        }else{
          history = firstNumber.toString() + operation + secondNumber.toString();
        }
      }else if(operation == 'x'){
        result = (firstNumber * secondNumber).toString();
        String fns = firstNumber.toString();
        String sns = secondNumber.toString();
        if(fns.substring(fns.length - 2, fns.length) == '.0' && sns.substring(sns.length - 2, sns.length) == '.0'){
          fns = fns.substring(0, fns.length - 2);
          sns = sns.substring(0, sns.length - 2);
          history = fns + operation + sns;
        }else{
          history = firstNumber.toString() + operation + secondNumber.toString();
        }
      }else if(operation == '/'){
        result = (firstNumber / secondNumber).toString();
        String fns = firstNumber.toString();
        String sns = secondNumber.toString();
        if(fns.substring(fns.length - 2, fns.length) == '.0' && sns.substring(sns.length - 2, sns.length) == '.0'){
          fns = fns.substring(0, fns.length - 2);
          sns = sns.substring(0, sns.length - 2);
          history = fns + operation + sns;
        }else{
          history = firstNumber.toString() + operation + secondNumber.toString();
        }
      }
    }else{
      result = inputDisplay + btnValue;
    }

    setState(() {
      inputDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                history,
                style: TextStyle(color: Color(0xFF616161), fontSize: 25.0),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                inputDisplay,
                style: TextStyle(color: Color(0xFF616161), fontSize: 40.0),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: 'AC',
                textColor: 0xFF1A237E,
                btnColor: 0xFF42A5F5,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70, 
                callback: clickOnButtons,
              ),
              CalculatorButton(
                text: 'C',
                textColor: 0xFF1A237E,
                btnColor: 0xFF64B5F6,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '<',
                textColor: 0xFF1A237E,
                btnColor: 0xFF90CAF9,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '/',
                textColor: 0xFF1A237E,
                btnColor: 0xFF64B5F6,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
            ], 
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '7',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '8',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '9',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: 'x',
                textColor: 0xFF1A237E,
                btnColor: 0xFF64B5F6,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
            ], 
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '4',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '5',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '6',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '+',
                textColor: 0xFF1A237E,
                btnColor: 0xFF64B5F6,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
            ], 
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '1',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '2',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70, 
                callback: clickOnButtons,
              ),
              CalculatorButton(
                text: '3',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70, 
                callback: clickOnButtons,
              ),
              CalculatorButton(
                text: '-',
                textColor: 0xFF1A237E,
                btnColor: 0xFF64B5F6,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70, 
                callback: clickOnButtons,
              ),
            ], 
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '.',
                textColor: 0xFF1A237E,
                btnColor: 0xFF42A5F5,
                btnRadius: 5.0,
                fontsize: 25.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '0',
                textColor: 0xFF1A237E,
                btnColor: 0xFFBBDEFB,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 70,
                callback: clickOnButtons, 
              ),
              CalculatorButton(
                text: '=',
                textColor: 0xFF1A237E,
                btnColor: 0xFF1976D2,
                btnRadius: 5.0,
                fontsize: 30.0,
                btnHeight: 70, 
                btnWidth: 160,
                callback: clickOnButtons, 
              ),
            ], 
          )
        ], 
      ),
    );
  }
}