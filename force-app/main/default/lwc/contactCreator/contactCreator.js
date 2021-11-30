import { LightningElement } from 'lwc';
import createAccountContact from '@salesforce/apex/CAPS_ContactHelper.createAccountContact';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ContactCreator extends LightningElement {
  /**
   * Se crean variables para almacenar los datos de los inputs
   */
    firstName = "";
    lastName = "";
    companyName = "";

    /**
     * Se obtiene los valores ingresados en los inputs para guardarlos en cada variable
     */
    handleChange(event) {
        const input = event.target;
        switch (input.name) {
            case "firstName":
                this.firstName = input.value;
                break;
            case "lastName":
                this.lastName = input.value;
                break;
            case "companyName":
                this.companyName = input.value;
                break;
            default:
                break;
        }
    }

    /**
     * LLama a saveRecord()
     */
    handleSave() {
        this.saveRecord();
    }

    /**
     * Llama a clearFields()
     */
    handleCancel() {
        this.clearFields();
    }

    /**
     * Llama a createAccountContact() y le envia los valores de las variables
     */
    saveRecord() {
        console.log("saving record");
        createAccountContact({ firstName: this.firstName, lastName: this.lastName, company: this.companyName})
        .then((result) => {
            console.log("success");
            this.showToast("success", "Saved successfuly", "");//Muestra mensaje de exito
            this.clearFields();
        })
        .catch((error) => {
            console.log("error", error);
            this.showToast("error", "Error", "Error on saveRecord");//Muestra mensaje de error
        });
    }

    /**
     * Limpia los valores de los inputs
     */
    clearFields() {
        this.firstName = "";
        this.lastName = "";
        this.companyName = "";
        this.template.querySelectorAll('lightning-input').forEach(element => {
            element.value = null;
        });
    }

    /**
     * Crea mensajes para mostrar, dependiendo de los parametros indicados
     */
    showToast(variant, title, message) {
        const event = new ShowToastEvent({
            variant: variant,
            title: title,
            message: message
        });
        this.dispatchEvent(event);
    }
}