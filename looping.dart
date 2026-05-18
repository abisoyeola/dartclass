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
  // using for

  for (int i = 1; i <= 50; i++) {
    print("The value of i is: $i");
    print(checkEvenOddPrime(i));
  }
}


// Write a program that allow users to enter 10 random integer numbers and store it in a list and then print the list and the sum of the numbers in the list.
//Then write a function that takes a list of integers as input and returns the average of the numbers in the list. Then call the function and print the result.
//Then a function that takes a list of integers as input and returns the maximum number in the list.and print each number in the list as either even or odd.