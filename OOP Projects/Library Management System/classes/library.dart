import 'book.dart';
import 'loan.dart';
import 'member.dart';

// Library class
class Library {
  List<Book> allBooks = [];
  List<Loan> loanBooks = [];

  void addBook(Book book) {
    this.allBooks.add(book);
  }

  void listBooks() {
    print(
      "All Books in Library ----------------------------------------------",
    );
    for (Book book in this.allBooks) {
      print(
        "Title: ${book.title}, Author: ${book.author}, Published Year: ${book.publishedYear}, Is Available: ${book.isAvailable}",
      );
    }
  }

  void listLoanBooks() {
    print(
      "Loan Books in Library ---------------------------------------------",
    );
    for (Loan loan in this.loanBooks) {
      print("${loan.book.title} is assigned to ${loan.member.name}");
    }
  }

  void loadBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      this.loanBooks.add(Loan.defaultReturnDate(book, member, DateTime.now()));
    } else {
      print("${book.title} is not available");
    }
  }
}
