import 'package:polymorphism/employee.dart';

class Intern extends Employee {
  String supervisor;

  Intern(String name, String department, this.supervisor)
      : super(name, department);

  @override
  void describeRole() {
    super.describeRole();
    print("I am supervised by $supervisor.");
  }
}
