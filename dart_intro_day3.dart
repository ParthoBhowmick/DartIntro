class Person {
  Person.fromJson(int data) {
    print('in Person');
  }

  Person() {
    print('This is person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).

  Employee();

  // named constructor
  Employee.containData(int data) : super.fromJson(data) {
    print(data);
  }

  Employee.shortConstructor(this.name, this.age);

  var name;
  var age; // variable name self is getter and setter

  desc() {
    print('${this.name} is ${this.age} yr old');
  }
  
  double _grossSalary;  
  
  retirement() => true;
  
  set bonus(double percentage) => _grossSalary = this.age * percentage;
  
  double get bonus => _grossSalary; 
  
}

main() {
  var emp = Employee();
  var emp2 = Employee.containData(99);

  var emp3 = Employee.shortConstructor('Ali', 30);
  emp3.desc();

  emp.name = "Partho";
  emp.age = 24;

  emp.desc();

  emp2.name = 45;
  emp2.age = "Boka";

  emp2.desc();
  
  emp3.bonus=30;
  print(emp3.bonus);
  
}
