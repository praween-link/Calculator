import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  
  final String text;
  final int textColor;
  final int btnColor;
  final double btnRadius;
  final double fontsize;
  final double btnHeight;
  final double btnWidth;
  final Function callback;


  const CalculatorButton({
    required this.text,
    required this.textColor,
    required this.btnColor,
    required this.btnRadius,
    required this.fontsize,
    required this.btnHeight,
    required this.btnWidth,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: SizedBox(
        height: btnHeight,
        width: btnWidth,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius)),
          onPressed: (){callback(text);}, 
          child: Text(text, style: TextStyle( fontSize: fontsize)), //0xFFFF6F00
          color: Color(btnColor),
          textColor: Color(textColor), // Grey - 0xFF616161 -- 0xFF1A237E
        ),
                  
      )
    );
  }
}