class Person {
  String _name;
  int _age;
  double _height;
  int _marks;
  String grade;

  Person(this._name, this._age, this._height, this._marks, this.grade);

  void displayInfo() {
    print(
      "Person name: ${this._name}, Age: ${this._age}, Height: ${this._height}, Marks: ${this._marks}, Grade: ${this.grade}",
    );
  }

  //   getters and setters
  String get personName => this._name;
  int get personAge => this._age;
  double get personHeight => this._height;
  int get personMarks => this._marks;

  set setPersonName(String name) {
    _name = name;
  }

  set setPersonAge(int age) {
    _age = age;
  }

  set setPersonHeight(double height) {
    _height = height;
  }

  set setPersonMarks(int marks) {
    _marks = marks;
  }
}
