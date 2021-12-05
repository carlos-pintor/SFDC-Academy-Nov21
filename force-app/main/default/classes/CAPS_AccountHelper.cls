public with sharing class CAPS_AccountHelper {
    @AuraEnabled
    public static List<Account> getRecords(){
        try {
            return [SELECT Name, Type FROM Account ORDER BY Name LIMIT 50];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static void createTaskRecords(List<Account> listAccount, String subject, String activityDate){
        try {
            List<Task> listNewTasks = new List<Task>();
            for (Account acc : listAccount) {
                Task task = new Task();
                task.WhatId = acc.Id;
                task.Subject = subject;
                task.ActivityDate = Date.valueOf(activityDate);
                listNewTasks.add(task);
            }
            Insert listNewTasks;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
