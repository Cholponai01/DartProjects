import 'package:polymorphism/employee.dart';

class Intern extends Employee {
  String supervisor;

  Intern(this.supervisor, super.name, super.department);

  @override
  void describeRole() {
    print("Intern");
  }
}
