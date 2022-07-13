import { LightningElement } from "lwc";

export default class ParentComponent extends LightningElement {
  selectedValue;
  list = [
    {
      id: 1,
      task: "Go to gym"
    },
    {
      id: 2,
      task: "eat good"
    }
  ];

  addInputToList() {
    this.isVisible = true;
    let userInput = this.template.querySelector(".taskInput");
    console.log("add input fire");
    if (userInput.value) {
      let id = this.list.length + 1;
      this.list = [
        ...this.list,
        {
          id: id,
          task: userInput.value
        }
      ];
    }
  }
  handleSelect(e) {
    this.selectedValue = e.detail;
  }
}
