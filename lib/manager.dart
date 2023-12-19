import 'package:polymorphism/employee.dart';

class Manager extends Employee {
  int teamSize;
  Manager(this.teamSize, super.name, super.department);

  @override
  void describeRole() {
    print("Manager");
  }
}
