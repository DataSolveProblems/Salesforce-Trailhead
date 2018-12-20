trigger OrderEventTrigger on Order_Event__e (after insert) {    
    // List to hold all tasks to be created.
    List<Task> tasks = new List<Task>();
    
    // Get queue Id for task owner
    //Group queue = [SELECT Id FROM Group WHERE Name='Regional Dispatch' LIMIT 1];
     String usr = UserInfo.getUserId();  
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Task to dispatch new team.
            Task ts = new Task();
            ts.Priority = 'Medium';
            ts.Status = 'New';
            ts.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            ts.OwnerId = usr;//queue.Id;
            tasks.add(ts);
        }
   }
    
    // Insert all tasks corresponding to events received.
    insert tasks;

}
