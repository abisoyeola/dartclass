import 'dart:io';

int performAMSDMo(int a, int b, String op) {
  switch (op) {
    case "+":
      return a + b;
    case "-":
      return a - b;
    case "*":
      return a * b;
    case "/":
      return a ~/ b; // integer division
    case "%":
      return a % b;
    default:
      print("Invalid operator");
      return 0;
  }
}

double performAMSDM(double a, double b, String op) {
  switch (op) {
    case "+":
      return a + b;
    case "-":
      return a - b;
    case "*":
      return a * b;
    case "/":
      return a / b; // floating-point division
    case "%":
      return a % b;
    default:
      print("Invalid operator");
      return 0;
  }
}

void main() {
  double a, b;
  int aInt, bInt;
  String? inputOp;
  print(
    "Enter chose option I for integer calculation and D for double calculation: ",
  );
  String? choice = stdin.readLineSync();

  if (choice == "I") {
    print("Please enter the first integer: ");
    String? inputA = stdin.readLineSync();
    aInt = int.parse(inputA!);
    print("Please enter the second integer: ");
    String? inputB = stdin.readLineSync();
    bInt = int.parse(inputB!);
    print("Please enter the operator: ");
    inputOp = stdin.readLineSync();

    print(performAMSDMo(aInt, bInt, inputOp!));
  } else {
    print("Please enter the first integer: ");
    String? inputA = stdin.readLineSync();
    double a = double.parse(inputA!);
    print("Please enter the second integer: ");
    String? inputB = stdin.readLineSync();
    double b = double.parse(inputB!);
    print("Please enter the operator: ");
    String? inputOp = stdin.readLineSync();

    print(performAMSDM(a, b, inputOp!));
  }
}
