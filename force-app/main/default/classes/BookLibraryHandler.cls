public with sharing class BookLibraryHandler {
  public BookLibraryHandler() {
  }
  public static void handleBeforeInsert(List<Loan__c> loans) {
    // if book.subject != reader.subject
    // reader can not borrow this subject

    system.debug('Before Insert ' + loans);

    List<Id> books = new List<Id>();
    List<Id> readers = new List<Id>();
    for (Loan__c loan : loans) {
      readers.add(loan.Reader__c);
      books.add(loan.Book__c);
    }
    system.debug('looped results--' + readers);
    system.debug('looped results--' + books);

    // SELECT Subject__c FROM Reader__c WHERE ID= 'a011k000006ImmjAAC' == "Python"
    List<Reader__c> ReaderSubject = [
      SELECT Subject__c
      FROM Reader__c
      WHERE ID = :readers
    ];
    system.debug('List for reader subject ' + ReaderSubject);
    // SELECT Subject__c FROM Book__c WHERE ID= 'a001k000004BYy1AAG' == "AWS"
    List<Book__c> BookSubject = [
      SELECT Subject__c
      FROM Book__c
      WHERE ID = :books
    ];
    system.debug('List for book subject ' + BookSubject);

    // if reader__c.subject__c != book__c.subject__c Fail can not read that books

    // if book.books_aviaible < 1 fail not enough books
  }

  public static void handleAfterInsert(List<Loan__c> loans) {
    system.debug('After Insert ' + loans);
  }
}

//21:09:00:095 USER_DEBUG [9]|DEBUG|Before Insert
//(Loan__c:{Id=null, IsDeleted=false, Name=null, CreatedDate=null, CreatedById=null, LastModifiedDate=null, LastModifiedById=null, SystemModstamp=null, On_Loan__c=true, Date_Loan_Out__c=2022-07-23 00:00:00, Returned_Date__c=2022-08-06 00:00:00, Book__c=a001k000004BYy1AAG, Reader__c=a011k000006ImmjAAC})

//21:09:00:154 USER_DEBUG [17]|DEBUG|Loan__c:{Date_Loan_Out__c=2022-07-23 00:00:00, Book__c=a001k000004BYy1AAG, On_Loan__c=true, Reader__c=a011k000006ImmjAAC, Returned_Date__c=2022-08-06 00:00:00, Id=a021k00000IsuN9AAJ}

