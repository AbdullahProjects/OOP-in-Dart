import 'book.dart';
import 'member.dart';

// Loan class which contains Named Constructor
class Loan {
  Book book;
  Member member;
  DateTime assignedDate;
  DateTime returnDate;

  Loan(this.book, this.member, this.assignedDate, this.returnDate);
  Loan.defaultReturnDate(this.book, this.member, this.assignedDate)
    : returnDate = DateTime.now().add(Duration(days: 10));
}
