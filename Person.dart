class Person {
  String _firstName;
  String _lastName;
  int _age;

  //Construction
  Person({
    required String firstName,
    required String lastName,
    required int age,
  }) : _firstName = firstName,
       _lastName = lastName,
       _age = age;

  // Named Constructor
  Person.fromMap(Map<String, dynamic> data)
    : _firstName = data['firstname'],
      _lastName = data['lastname'],
      _age = data['age'];

  Person.aged(int age) : _age = age, _firstName = "", _lastName = "";
  Person.lastname(String lastname)
    : _lastName = lastname,
      _firstName = "",
      _age = 0;

  Person.fn(String fn) : _firstName = fn, _lastName = "", _age = 0;

  void displayInfo() {
    print("First Name: $_firstName, Last Name: $_lastName, Age: $_age");
  }
}

class Employee extends Person {
  String employeeId;
  double salary;

  Employee({
    required this.employeeId,
    required this.salary,
    required String firstName,
    required String lastName,
    required int age,
  }) : super(firstName: firstName, lastName: lastName, age: age);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Employee ID: $employeeId, Salary: $salary");
  }
}
