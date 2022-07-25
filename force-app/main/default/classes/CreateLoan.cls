public with sharing class CreateLoan {
  public static void CreateLoan() {
    Loan__c myNewLoan = new Loan__c(
      Date_Loan_Out__c = system.today(),
      // Need to create a book and a reader 1st in the LWC to get these ID
      Book__c = 'a001k000004BYy1AAG',
      On_Loan__c = true,
      Reader__c = 'a011k000006ImmjAAC',
      Returned_Date__c = system.today() + 14
    );

    // Insert it into the database

    insert myNewLoan;

    // View its content, including ID (null until it's inserted)

    system.debug('My New Loan:: ' + myNewLoan);

    // Display a URL which you can cut and paste into your browser to see the detail page for the inserted object

    String urlForDetailPage = new PageReference('/' + myNewLoan.id).getUrl();
    system.debug('Url for loan:: ' + urlForDetailPage);
    // a021k00000IsuN4AAJ
  }
}
