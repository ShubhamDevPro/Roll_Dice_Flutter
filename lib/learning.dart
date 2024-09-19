import 'dart:io';
void main(){
  print("Shubham");
  stdout.write("Welcome to dart !\n");
  var name = stdin.readLineSync();
  print("Welcome, $name");
  // Declaration of variable
  int a ; // is non nullable
  // can be used in this scope only
  // or will need reference to a class if defined under class
  int? b; // is nullable i.e. default value is null
  String name1 = "mohan" ;//inline declaration
  BigInt longValue;
  longValue = BigInt.parse('1515151597878787');
  print(longValue);
  double pecentage = 99.75;
  num percent = 99.75; // num can store both integer and double data type
  bool isLogin = false;
  isLogin = true;
  var myC = myClass() ;// creating new object of class using constructor(function)
  myC.printName();
}
class myClass{
  void printName(){
    print("Shubham");
  }
  
}