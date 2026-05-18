import 'dart:io';

//If condition
//Loop
//functions
//OOP

String checkEvenOddPrime(int number) {
  if (number == 2 || number == 3 || number == 5 || number == 7) {
    if (number % 2 == 0) {
      return "The number $number is even and prime.";
    } else {
      return "The number $number is odd and prime.";
    }
  } else {
    if (number % 2 == 0) {
      return "The number $number is even.";
    } else {
      if (number % 2 >= 1 &&
          number % 3 >= 1 &&
          number % 5 >= 1 &&
          number % 7 >= 1) {
        return "The number $number is prime.";
      } else {
        return "The number $number is odd.";
      }
    }
  }
}

void main() {
  print("Please enter a number: ");
  String? input = stdin.readLineSync();
  int number = int.parse(input!);

  //checking if the number is even or odd
  print("$number % 2 = ${number % 2}");

  print(checkEvenOddPrime(number));
}
