import 'package:flutter/material.dart';
class StyledText extends StatelessWidget{
  const StyledText(this.text,{super.key}); //this.text automatically maps the class variable to the argument received
  //const StyledText(String text,{super.key}):outputText =text;
  final String text ;
  @override
  Widget build(context) {
    return Text(
      text,
      style:const TextStyle(
        color:Colors.white,
        fontSize: 28),);
  }
}