/**
 * @author Carlos Pintor
 * @date 2021-11-13
 * @description Apex Class example to handle first steps with apex coding.
 *              This class implements methods to work with DML to create task records
 */
public with sharing class CAPS_TaskHelper {

    /**
     * @description Creates a task for each recordId
     * @param recordIds Record Ids to create a task for
     * @param subject Task subject
     * @param activityDate Activity date
     * @return A list of tasks created
     */
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
