import 'person_class.dart';

void main() {
  Person person = Person("Abdullah", 12, 19.40, 450, "A+");
  person.displayInfo();
  // use setters to assign new value to private members
  person.setPersonName = "Ali";
  person.setPersonAge = 35;
  person.setPersonHeight = 12.00;
  person.setPersonMarks = 550;
  person.displayInfo();
}
