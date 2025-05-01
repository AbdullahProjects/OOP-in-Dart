void main() {
  // create object of generative constructor
  Person person = Person("Abdullah Khan", 20, "A+");
  person.displayInfo();
  // create object of constant constructor
  Area area = Area(length: 25.8, width: 12.9);
  // area.width = 300.5; ------------------------------ (will show error because width is final and value can only be assigned to it only once)
  area.calculateArea();
  // create object of named constructor
  Employee employee1 = Employee("Abdullah", 1200, "Student");
  Employee employee2 = Employee.fresher("Ali");
  Employee employee3 = Employee.intermediate("Bilal");
  Employee employee4 = Employee.highlyExperienced("Haider");
  employee1.displayEmployeeInfo();
  employee2.displayEmployeeInfo();
  employee3.displayEmployeeInfo();
  employee4.displayEmployeeInfo();
}

// Generative Constructor
class Person {
  String name;
  int age;
  String grade;

  Person(this.name, this.age, this.grade);

  void displayInfo() {
    print(
      "Person name is ${this.name} and person age is ${this.age} and person grade is ${this.grade}",
    );
  }
}

// Constant Constructor
class Area {
  final double length;
  final double width;

  Area({required this.length, required this.width});

  void calculateArea() {
    double area = length * width;
    print("Area of rectangle is : $area");
  }
}

// Named Constructor
class Employee {
  String name;
  int salary;
  String experienceLevel;

  Employee(this.name, this.salary, this.experienceLevel);
  Employee.fresher(this.name) : salary = 25000, experienceLevel = "Fresher";
  Employee.intermediate(this.name)
    : salary = 55000,
      experienceLevel = "Intermediate";
  Employee.highlyExperienced(this.name)
    : salary = 95000,
      experienceLevel = "Highly Experienced";

  void displayEmployeeInfo() {
    print(
      "Employee name is $name, salary is $salary, experience level is $experienceLevel",
    );
  }
}
