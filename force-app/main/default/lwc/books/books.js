//https://developer.salesforce.com/docs/component-library/bundle/lightning-record-form/documentation
import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

import BOOK_OBJECT from "@salesforce/schema/Book__c";
import BOOK_TITLE from "@salesforce/schema/Book__c.Book_Title__c";
import SUBJECT from "@salesforce/schema/Book__c.Subject__c";
import BOOKS_AVAILABLE from "@salesforce/schema/Book__c.Books_Available__c";

export default class Books extends LightningElement {
  objectName = BOOK_OBJECT;
  fieldList = [BOOK_TITLE, SUBJECT, BOOKS_AVAILABLE];

  successHandler(event) {
    const toastEvent = new ShowToastEvent({
      title: "Book created",

      message: "Record ID: " + event.detail.id,

      variant: "success"
    });

    this.dispatchEvent(toastEvent);
  }
}
