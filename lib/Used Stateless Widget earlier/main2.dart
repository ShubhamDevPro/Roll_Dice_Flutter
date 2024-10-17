import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255,47,5,120),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45 , 7, 98)],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text('Hello World',style:TextStyle(
                color:Colors.white,
                fontSize: 28),),
          ),
        ),
      ),
    ),
  );
}
class GradientContainer extends StatelessWidget{ //GradientContainer inherits from StatelessWidgets.
  // inheriting adds a lot of logic and data so that we can use it as a widget
  @override // metadata- overriding a method that's expected by stateless widget
  Widget build(context){ // Widget is the return type of function build
    // context is parameter
    return

  }
}