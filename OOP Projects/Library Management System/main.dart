// ------------------- Library Management System -------------------------------
// Here we can add books, assign books for loan and get all the listed books in library as well as loan books

import 'classes/book.dart';
import 'classes/library.dart';
import 'classes/member.dart';

void main() {
  // Create 3 books objects
  Book book1 = Book(
    title: "Dart Programming For Begineers",
    author: "Ali",
    publishedYear: 2022,
    isAvailable: true,
  );
  Book book2 = Book(
    title: "Flutter Fundamentals",
    author: "Abdullah",
    publishedYear: 2024,
    isAvailable: true,
  );
  Book book3 = Book(
    title: "Flutter Animations",
    author: "Bilal",
    publishedYear: 2021,
    isAvailable: true,
  );

  // Create library object
  Library library = Library();
  // add books in library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  // list details of all the books exist in library
  library.listBooks();
  // assign book to a member
  library.loadBook(
    book1,
    Member(
      name: "Abdullah Khan Kakar",
      phoneNumber: "+923294890909",
      email: "abdullah@gmail.com",
      address: "Lahore",
    ),
  );
  // list all the books assigned to members means all the books that currently not available in library
  library.listLoanBooks();
}
