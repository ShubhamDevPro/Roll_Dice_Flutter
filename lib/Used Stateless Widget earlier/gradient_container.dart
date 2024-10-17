import 'package:flutter/material.dart';
import 'package:RollDice/styled_text.dart';

class GradientContainer extends StatelessWidget{ //GradientContainer inherits from StatelessWidgets.
  // inheriting adds a lot of logic and data so that we can use it as a widget

  //Adding a constructor function ->
  // GradientContainer(){ // initialisation is done inside Const. func};
  GradientContainer(this.colors,{super.key});
  // GradientContainer.purple({super.key}):color1 = Colors.deepPurple,color2=Colors.indigo; // Purple constructor function with predefined colors
  // or
  // const GradientContainer(this.color1, this.color2, {super.key})
  //final Color color1;
  //final Color color2;
  // then colors: [color1,color2];
  final List<Color> colors;
  //GradientContainer({key}):super(key:key); // super refers to parent class
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice(){
    var activeDiceImage = 'assets/images/dice-4.png';
  }
  @override // metadata- overriding a method that's expected by stateless widget
  Widget build(context){ // Widget is the return type of function build
    // context is parameter
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //colors:[Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45 , 7, 98)],
          colors:colors,
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,
        ),
      ),
      child: Center(
        //child: const StyledText('Shubham'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width :200,
            ),
          TextButton(
              onPressed:rollDice,

              style:TextButton.styleFrom(foregroundColor: Colors.white,padding: EdgeInsets.only(top:20),textStyle: TextStyle(fontSize: 28)),
              child:StyledText('Roll Dice'))
        ],)
      ),
    );

  }
}
