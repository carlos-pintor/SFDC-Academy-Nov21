public with sharing class CAPS_TaskHelper {

    public static List<Task> createTaskForAccounts(List<Id> recordIds, String subject, Date activityDate) {
        List<Task> newTaskList = new List<Task>();
        for(Id recId : recordIds) {
            Task task = new Task();
            task.WhatId = recId;
            task.Subject = subject;
            task.ActivityDate = activityDate;
            newTaskList.add(task);
        }
        Insert newTaskList;
        return newTaskList;
    }
}
