/**
 * @author Carlos Pintor
 * @date 2021-11-13
 * @description Apex Class example to handle first steps with apex coding.
 *              This class implements methods to work with DML to create a Contact
 */
public with sharing class CAPS_ContactHelper {
    /**
     * @description Creates a contact and an account with input param values
     * @param firstName First name to create a contact with
     * @param lastName Last name to create a contact with
     * @param company Company name to create an account with
     * @return The contact created
     */
    public static Contact createAccountContact(String firstName, String lastName, String company) {
        Account acc = new Account();
        acc.Name = company;
        Insert acc;

        Contact contact = new Contact();
        contact.FirstName = firstName;
        contact.LastName = lastName;
        contact.AccountId = acc.Id;
        Insert contact;

        return contact;
    }
}
