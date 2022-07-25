trigger BookLibrary on Loan__c(before insert, after insert, before update) {
  switch on Trigger.OperationType {
    when BEFORE_INSERT {
      BookLibraryHandler.handleBeforeInsert(Trigger.new);
    }
    when AFTER_INSERT {
      BookLibraryHandler.handleAfterInsert(Trigger.new);
    }
  }
}
