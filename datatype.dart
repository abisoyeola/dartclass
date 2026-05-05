void main() {
  //Number : Integer, Double
  //String :
  //Boolean
  //Var
  //Dynamic
  //List
  //Map
  //Set

  int a = 5;
  double b = 5.5;
  String c = "Hello";
  bool d = true;

  print("a = $a");
  print("b = $b");
  print("c = $c");
  print("d = $d ");

  List myList = [5, 6, 7, 23, 56];
  print("myList = $myList");

  //Value at index 3
  print("Value at index 4 = ${myList[4]}");

  myList.add(7);
  print("myList after adding 7 = $myList");

  myList.add("String");
  print("myList after adding 'String' = $myList");

  myList.addAll(["Yes", "No", "YesNo", "Cancel"]);
  print("myList after adding multiple elements = $myList");

  myList.insert(3, 8);
  print("myList after inserting 8 at index 3 = $myList");

  myList.insertAll(4, [9, 10, 11, 12]);
  print("myList after inserting multiple elements at index 4 = $myList");

  myList.remove(23);
  print("myList after removing 23 = $myList");

  myList.removeAt(3);
  print("myList after removing element at index 4 = $myList");

  myList.removeAt(7);
  print("myList after removing element at index 7 = $myList");

  int score = 85;
  bool passed = false;

  var myMap = {3: "Three", 4: "Four"};
  Map<String, int> theMap = {"Three": 3, "Four": 4};

  print("myMap = $myMap");
  print("theMap = $theMap");

  //Add to the map
  myMap[5] = "Five";
  myMap[6] = "Six";
  print("myMap after adding elements = $myMap");

  //add many to theMap
  theMap.addAll({"Five": 5, "Six": 6});
  print("theMap after adding elements = $theMap");
}
