class Employee {
  String name;
  String department;

  Employee(this.name, this.department);

  void describeRole() {
    print("I am an employee in $department department.");
  }
}
