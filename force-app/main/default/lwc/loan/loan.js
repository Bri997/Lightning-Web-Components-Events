//https://developer.salesforce.com/docs/component-library/bundle/lightning-record-form/documentation
import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

import LOAN_OBJECT from "@salesforce/schema/Loan__c";
import FULL_NAME from "@salesforce/schema/Reader__c.Full_Name__c";
import SUBJECT from "@salesforce/schema/Reader__c.Subject__c";
import EMAIL from "@salesforce/schema/Reader__c.Email__c";
import BOOKS_BORROWED from "@salesforce/schema/Reader__c.Books_Borrowed__c";
import DATE_LOAN_OUT from "@salesforce/schema/Loan__c.DATE_Loan_Out__c";
import ON_LOAN from "@salesforce/schema/Loan__c.On_Loan__c";
import BOOK_TITLE from "@salesforce/schema/Book__c.Book_Title__c";

export default class Books extends LightningElement {
  objectName = LOAN_OBJECT;
  fieldList = [
    FULL_NAME,
    EMAIL,
    SUBJECT,
    BOOKS_BORROWED,
    DATE_LOAN_OUT,
    ON_LOAN,
    BOOK_TITLE
  ];

  successHandler(event) {
    const toastEvent = new ShowToastEvent({
      title: "Reader created",

      message: "Record ID: " + event.detail.id,

      variant: "success"
    });

    this.dispatchEvent(toastEvent);
  }
}
