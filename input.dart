import 'dart:io';

void main() {
  //This program demonstrates input/output operations in Dart
  //Welcome new user into my BMI calculator
  print("Please enter your name: ");
  String? name = stdin.readLineSync();

  print("Welcome $name, to the BMI Calculator!");

  print("Please enter your weight in kilograms:");
  String? weightInput = stdin.readLineSync();
  double weight = double.parse(
    weightInput!,
  ); // this '!' is ensuring that the input is not null

  print("Please enter your height in meters:");
  String? heightInput = stdin.readLineSync();
  double height = double.parse(
    heightInput!,
  ); // this '!' is ensuring that the input is not null

  //Calculate the BMI as weight / height * height
  double bmi = weight / (height * height);

  //Check if the person is overweighted or underweighted
  if (bmi < 18.5) {
    print("You are underweight.");
  } else if (bmi >= 18.5 && bmi < 25) {
    print("You have a normal weight.");
  } else {
    print("You are overweight.");
  }

  print("Your name is $name");
  print("Your height is: $height");
  print("Your weight is: $weight");
  print("Your BMI is: $bmi");
}

//Write a program that accept the following input from the users 
//Name, Maths Score, English Score, Physics Score , and 
// Calculate the Total Score and Average SCore of the student 
//Given that , Total = MS + ES + PS
//Average = Total / 3
// then print the results 
