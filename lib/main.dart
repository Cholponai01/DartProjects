import 'package:polymorphism/developer.dart';
import 'package:polymorphism/employee.dart';
import 'package:polymorphism/intern.dart';
import 'package:polymorphism/manager.dart';

void main() {
  List<Employee> employees = [
    Manager("Aidana Aman", "HR", 5),
    Intern("Asan Usonov", "MotionAcademy", "MotionAcademy"),
    Developer("Uson Asanov", "IT", "Flutter/Dart")
  ];

  displayRoles(employees);
}

void displayRoles(List<Employee> employees) {
  for (var employee in employees) {
    print("Employee name: ${employee.name}");
    print("Employee department: ${employee.department}");
    employee.describeRole();
    print("\n");
  }
}
