trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> taskList = new List<Task>();
    
    for(Opportunity opp : [SELECT Id,StageName FROM Opportunity 
                                        	WHERE Id IN :Trigger.New 
                           					and StageName = 'Closed Won']){
        taskList.add(new Task(
            			Description='Task created form Opportunities, Geo',
            			Subject='Follow Up Test Task',
            			WhatId = opp.Id
        			));
        
    }
  
    if(taskList.size()>0){
        insert taskList;
    }
}