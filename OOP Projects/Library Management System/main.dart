// ------------------- Library Management System -------------------------------
// Here we can add books, assign books for loan and get all the listed books in library as well as loan books

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

// Book class
class Book {
  String title;
  String author;
  int publishedYear;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.publishedYear,
    required this.isAvailable,
  });
}

// Member class
class Member {
  String name;
  String phoneNumber;
  String email;
  String address;

  Member({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.address,
  });
}

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
