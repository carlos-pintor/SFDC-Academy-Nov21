public with sharing class CAPS_ContactHelper {

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

    public static AccountContactInfo createAccountContactInfo(String firstName, String lastName, String company) {
        Account acc = new Account();
        acc.Name = company;
        Insert acc;

        Contact contact = new Contact();
        contact.FirstName = firstName;
        contact.LastName = lastName;
        contact.AccountId = acc.Id;
        Insert contact;

        AccountContactInfo info = new AccountContactInfo(acc, contact);
        return info;
    }

    public class AccountContactInfo {
        public Account account;
        public Contact contact;

        public AccountContactInfo(Account account, Contact contact) {
            this.account = account;
            this.contact = contact;
        }
    }
}
