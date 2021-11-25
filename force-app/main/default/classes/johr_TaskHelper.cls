/*el metodo tasks recibe 3 parametros en los cuales la lista id recibe ID, el string subjet_task recibe el recordatorio de 
  la tarea, y date_task recibe la fecha de vencimiento de la tarea.
  el metodo debe crear para cada id una tarea relacionada con el id con el asunto de texto recibidoy una fecha de vencimiento
  misma que se recibe como parametro. La tarea debe quedar relacionada el ID recibido con el campo WhatId del objeto 'Task' */
  public class johr_TaskHelper {
    public static List<Task> tar(List<ID> ids,String subject_task, Date date_task){
        //declaro la lista de tareas que se va a retornar y Task para ir insertando por separado a la lista
       List<Task> t = new List<Task>();
       Task tareas = new Task();
       
       for(Id i : ids){
           tareas.WhatId = i;
           tareas.Subject = subject_task;
           tareas.ActivityDate = date_task;
           t.add(tareas);
           
           system.debug('ids: ' + i);
        }
        //Database.SaveResult[] srList = Database.insert(t, false);
     //  Database.insert(t,false);
       System.debug('Result: ' + t);
       return t;
    }
    
    public static List<ID> lista(){
        List<Id> lst = new List<Id>(new Map<Id, Account>([select Id from Account]).keySet());
        return lst;
    }
}