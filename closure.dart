Function addMore(int x) {
  // this is a closure

  int closure(int z) {
    return x + z;
  }

  return closure; //(int y) => x + y;
}

dynamic twoLevelClosure(int f) {
  // return (int g) => (int h) => f + g*h;
  dynamic c1(int g) {
    dynamic c2(int h) {
      return f + g * h;
    }

    return c2;
  }

  return c1;
}

//
dynamic myClosure = addMore(10);
var sum = myClosure(90);
dynamic sum1 = sum;
void main() {
  print("Sum: $sum");

  var myc1 = twoLevelClosure(50);
  var myc2 = myc1(20);
  var myc3 = myc2(10);
  print("Result: $myc3");
}
