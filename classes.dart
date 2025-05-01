void main() {
  Car car = Car();
  car.color = "White Gold";
  car.year = 2020;
  car.carInfo();
}

class Car {
  String? color;
  int? year;

  void carInfo() {
    int year = 2000;
    print(
      "Car Color is $color and Car year is ${this.year} and beginning year was $year",
    );
  }
}
