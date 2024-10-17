import 'package:flutter/material.dart';
import 'package:RollDice/styled_text.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  //we dont add a build method in statefulwidget. Instead we add CreateState method
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){   //createState() returns a state object
    // State is a generic value type so we have to add angle brackets to inform dart which kind of state will be managed here
    // in our class it should be of type DiceRoller (class name)
    return _DiceRollerState();

  }
}
class _DiceRollerState extends State<DiceRoller>{
  final randomizer = Random();
  var currentDiceRoll = 2;
  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });

  }
  @override
  Widget build(context){
    return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Image.asset(
    'assets/images/dice-$currentDiceRoll.png',
    width :200,
    ),
    TextButton(
    onPressed:rollDice,
    style:TextButton.styleFrom(foregroundColor: Colors.white,padding: EdgeInsets.only(top:20),textStyle: TextStyle(fontSize: 28)),
    child:StyledText('Roll Dice'))
    ],);
  }
}