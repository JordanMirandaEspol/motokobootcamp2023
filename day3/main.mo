import List "mo:base/List";
import Book "./book";
import Utils "./utils";

 actor{
    public type Book = Book.Book;
    type List<T> = ?(T, List<T>);
    var bookList : List<Book> = List.nil<Book>();
    public func add_book(book : Book) : async () {
        bookList := List.push<Book>(book, bookList);
    };
    public func get_books() : async [Book]{
        let books : [Book] = List.toArray<Book>(bookList);
        return books
    };
}