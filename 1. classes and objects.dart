void main() {
  // first object
  Car car1 = Car();
  car1.color = "White Gold";
  car1.model = 2020;
  car1.price = 5000000;
  Person person1 = Person();
  person1.name = "Abdullah Khan Kakar";
  person1.profession = "Software Engineer";
  person1.location = "Lahore, Pakistan";
  car1.owner = person1;
  car1.carInfo();

  // second object
  Car car2 = Car();
  car2.color = "Red";
  car2.model = 2025;
  car2.price = 8000000;
  Person person2 = Person();
  person2.name = "Abdullah Khan";
  person2.profession = "Flutter developer";
  person2.location = "Lahore, Punjab, Pakistan";
  car2.owner = person2;
  car2.carInfo();
}

// create classes without constructors
class Car {
  String? color;
  int? price;
  int? model;
  Person owner = Person();

  void carInfo() {
    int model = 2000;
    print(
      "Car Color is $color and Car model is ${this.model}. First model was launched in $model. Owner info is ${owner.personInfo()}",
    );
  }
}

class Person {
  String? name;
  String? profession;
  String? location;

  String personInfo() {
    return "Person name is $name, profession is $profession and location is $location";
  }
}
