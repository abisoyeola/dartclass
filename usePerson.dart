import 'Person.dart';

void main() {
  Person ramadan = Person.aged(
    34,
  ); //Person(firstName: "Ramadan", lastName: "Ahmed", age: 30);
  ramadan.displayInfo();

  Person hasLastname = Person.lastname("Sade");
  hasLastname.displayInfo();

  Employee blessing = Employee(
    employeeId: "E001",
    salary: 50000.0,
    firstName: "Blessing",
    lastName: "Okafor",
    age: 28,
  );
  blessing.displayInfo();
}
