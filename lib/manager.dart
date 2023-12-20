import 'package:polymorphism/employee.dart';

class Manager extends Employee {
  int teamSize;
  Manager(String name, String department, this.teamSize)
      : super(name, department);

  @override
  void describeRole() {
    super.describeRole();
    print("I manage a team of $teamSize people.");
  }
}
