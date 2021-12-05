import { LightningElement } from 'lwc';
import getRecords from '@salesforce/apex/CAPS_AccountHelper.getRecords';
import createTaskRecords from '@salesforce/apex/CAPS_AccountHelper.createTaskRecords';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class TaskCreator extends LightningElement {
  columns = [
    {label:"Account Name", fieldName:"Name"},
    {label:"Account Type", fieldName:"Type"}
  ];
  data = [];
  selectedRows = [];
  openModal = false;
  subject = "";
  activityDate = "";

  connectedCallback() {
    this.getData();
  }

  getData() {
      getRecords()
      .then((result) => {
          this.data = result;
      })
      .catch((error) => {
          console.log("Error:", error);
      });
  }

  handleRowSelection(event) {
    this.selectedRows = event.detail.selectedRows;
    console.log("selected rows:", this.selectedRows);
  }

  handleClickAdd() {
    this.openModal = true;
  }

  handleClickCancel() {
    this.openModal = false;
  }

  handleChange(event) {
    const input = event.target;
    switch (input.name) {
        case "subject":
            this.subject = input.value;
            break;
        case "activityDate":
            this.activityDate = input.value;
            break;
        default:
            break;
    }
  }

  save() {
    createTaskRecords({ listAccount: this.selectedRows, subject: this.subject, activityDate: this.activityDate})
    .then((result) => {
        console.log("success");
        this.showToast("success", "Saved successfuly", "");
        this.openModal = false;
    })
    .catch((error) => {
        console.log("error", error);
        this.showToast("error", "Error", "Error on saveRecord");
    });
  }

  showToast(variant, title, message) {
    const event = new ShowToastEvent({
        variant: variant,
        title: title,
        message: message
    });
    this.dispatchEvent(event);
  }
}