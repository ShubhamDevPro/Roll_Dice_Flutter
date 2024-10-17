import 'package:flutter/material.dart';
import 'package:RollDice/gradient_container.dart';
void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255,47,5,120),
        body:GradientContainer([Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45 , 7, 98)])
      ),
    ),
  );
}

// const -> infront of a variable makes the variable compiled time constant

