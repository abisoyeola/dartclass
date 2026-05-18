// Write a program that allow users to enter 10 random integer numbers and store it in a list and then print the list and the sum of the numbers in the list.
//Then write a function that takes a list of integers as input and returns the average of the numbers in the list. Then call the function and print the result.
//Then a function that takes a list of integers as input and returns the maximum number in the list.and print each number in the list as either even or odd.

import 'dart:io';

double calculateAverage(List<int> numbers) {
  // int sum = numbers.reduce((a, b) => a + b);
  // return sum / numbers.length;
  double sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}

int getMax(List<int> numbers) {
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}

void evenOdd(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      print("${numbers[i]} is even.");
    } else {
      print("${numbers[i]} is odd.");
    }
  }
}

void main() {
  print("Enter 10 random integer numbers: ");
  List<int> numbers = [];
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    String? input = stdin.readLineSync();
    int number = int.parse(input!);
    numbers.add(number);
    sum += number;
  }
  print("The list of numbers is: $numbers");
  print("The sum of the numbers is: $sum");
  // int sum = numbers.reduce((a, b) => a + b);
  // print("The sum of the numbers is: $sum");
  double average = calculateAverage(numbers);
  print("The average of the numbers is: $average");

  int max = getMax(numbers);
  print("The maximum number in the list is: $max");
  evenOdd(numbers);
}
