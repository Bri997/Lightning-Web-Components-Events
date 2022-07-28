public with sharing class BookLibraryHandler {
  public BookLibraryHandler() {
  }

  public static void handleBeforeInsert(List<Loan__c> listOfLoans) {
    List<Id> books = new List<Id>();
    List<Id> readers = new List<Id>();

    for (Loan__c loan : listOfLoans) {
      readers.add(loan.Reader__c);
      books.add(loan.Book__c);
    }

    Map<Id, Reader__c> readerMap = new Map<Id, Reader__c>(
      [
        SELECT Subject__c, Books_Borrowed__c, Email__c, Full_Name__c
        FROM Reader__c
        WHERE ID = :readers
      ]
    );

    Map<Id, Book__c> bookMap = new Map<Id, Book__c>(
      [
        SELECT Subject__c, Book_Title__c, Books_Available__c, Books_Out__c
        FROM Book__c
        WHERE ID = :books
      ]
    );

    String bookSubject = bookMap.get(books[0]).subject__c;
    String readerSubject = readerMap.get(readers[0]).subject__c;
    Decimal booksAvailable = bookMap.get(books[0]).Books_Available__c;
    Decimal booksOut = bookMap.get(books[0]).Books_Out__c;

    for (Loan__c loan : listOfLoans) {
      if (bookSubject != readerSubject) {
        loan.addError('The Reader and Books subject do not equal');
      }
      if (booksAvailable < 1) {
        loan.addError('There are no books to loan');
      }
    }
  }

  public static void handleAfterInsert(List<Loan__c> listOfLoans) {
  }
}
