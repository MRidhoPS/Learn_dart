class Employee{
  String? name;
  Employee(this.name);
}

class Manager extends Employee{
  Manager(String name) : super(name);
}

class VicePresident extends Manager{
  VicePresident(String name) : super(name);
}

void main(){

  Employee employee = Employee("Ridho");
  print(employee.name);
  employee = Manager("artuhur");
  print(employee.name);

  employee = VicePresident("vc");
  print(employee.name);

}

/**
 * kemampuan sebuah object berubah bentuk menjadi bentuk lain
 * erat hubungannya dengan inheritance
 */