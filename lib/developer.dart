import 'package:polymorphism/employee.dart';

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, String department, this.programmingLanguage)
      : super(name, department);

  @override
  void describeRole() {
    super.describeRole();
    print("I use $programmingLanguage.");
  }
}
