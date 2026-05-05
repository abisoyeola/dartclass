import 'dart:io';

late String c;

void main() {
  // vARIABLES
  var myVar = "Idris";
  print(myVar);

  //Constant variable
  var name = stdin.readLineSync();
  const myConstVar = "Friendship";

  print("Constant variable: $myConstVar");

  var a = 8;
  var b = 9;
  c = "Ademola";

  final myFinalVar = name;
  print("Final variable: $myFinalVar");
}
