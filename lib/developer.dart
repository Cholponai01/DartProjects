import 'package:polymorphism/employee.dart';

class Developer extends Employee {
  String programmingLanguage;

  Developer(this.programmingLanguage, super.name, super.department);

  @override
  void describeRole() {
    print("Dart");
  }
}
