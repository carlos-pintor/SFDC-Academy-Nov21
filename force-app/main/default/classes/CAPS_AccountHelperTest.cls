@isTest
private class CAPS_AccountHelperTest {

    @TestSetup
    static void makeData(){
        //step 1
        List<Account> listNewAcc = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            Account acc = new Account();
            acc.Name = 'Test Account';
            listNewAcc.add(acc);
        }
        Insert listNewAcc;
    }

    @isTest
    static void testGetRecords() {
        //step 1 -  get the test data
        List<Account> listNewAcc = [SELECT Id FROM Account WHERE Name LIKE 'Test%'];
        //step 2 - start the test
        Test.startTest();
        //step 3 - execute the code
        List<Account> results = CAPS_AccountHelper.getRecords();
        //step 4 - stop the test
        Test.stopTest();
        //step 5 - assert
        System.assertEquals(listNewAcc.size(), results.size(), 'listNewAcc and results size are not the same');
    }

    @isTest
    static void testCreateTaskRecords(){
        //step 1 - get test data created in the @testSetup method
        List<Account> listNewAcc = [SELECT Id FROM Account WHERE Name LIKE 'Test%'];
        String subject = 'Call';
        String activityDate = '2021-12-04';

        //step 2 - start test
        Test.startTest();
        //step 3 - execute the code
        CAPS_AccountHelper.createTaskRecords(listNewAcc, subject, activityDate);
        //step 4 - stop test
        Test.stopTest();
        //step 5 - asserts
        List<Task> listTask = [SELECT WhatId, Subject, ActivityDate FROM Task WHERE CreatedDate = TODAY];
        System.assertEquals(listNewAcc.size(), listTask.size(), 'listNewAcc and listTask size are not the same');
    }

    @isTest
    static void testCreateTaskRecordsNullValues(){
        List<Account> listNewAcc = [SELECT Id FROM Account WHERE Name LIKE 'Test%'];
        String subject;
        String activityDate;
        String errMsg;
        try {
            CAPS_AccountHelper.createTaskRecords(listNewAcc, subject, activityDate);
        } catch (Exception e) {
            errMsg = e.getMessage();
        }
        System.assertNotEquals(null, errMsg, 'errMsg is null');
    }
}
