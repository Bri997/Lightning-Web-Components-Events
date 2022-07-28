public with sharing class CreateLoan {
  public static void CreateLoan() {
    Loan__c myNewLoan = new Loan__c(
      Date_Loan_Out__c = system.today(),
      Book__c = 'a001k000004BYy1AAG',
      On_Loan__c = true,
      Reader__c = 'a011k000006ImmjAAC',
      Returned_Date__c = system.today() + 14
    );

    insert myNewLoan;

    String urlForDetailPage = new PageReference('/' + myNewLoan.id).getUrl();
  }
}
