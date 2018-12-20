trigger OrderEventTrigger on Order_Event__e (after insert) {
    // List to hold all cases to be created.
    List<task> tasks = new List<task>();
       
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            task ts = new task();
            ts.Priority = 'Medium';
            ts.status = 'New';
            ts.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            ts.OwnerId = '00528000005NTRJ';  // Active User Id 
            tasks.add(ts);
        }
   }
    
    // Insert all cases corresponding to events received.
    insert tasks;
}
