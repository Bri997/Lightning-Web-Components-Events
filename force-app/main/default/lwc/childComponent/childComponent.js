import { LightningElement, api } from "lwc";

export default class ChildComponent extends LightningElement {
  @api inputItem;
  fireSelect(e) {
    const myEvent = new CustomEvent("inputitemselect", {
      detail: e.target.label
    });
    this.dispatchEvent(myEvent);
  }
}
