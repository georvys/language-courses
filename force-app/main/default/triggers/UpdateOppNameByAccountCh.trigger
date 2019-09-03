trigger UpdateOppNameByAccountCh on Account (after update) {
	List<Opportunity> oppList = new List<Opportunity>();
    Set<Id> accountIds = new Set<Id>();
    for (Account acc : Trigger.new) {
         Account old = Trigger.oldMap.get(acc.Id);
         if (acc.Name != old.Name) {
             accountIds.add(acc.Id);
         }
    }
    if (!accountIds.isEmpty()) {
        for(Opportunity opp : [select Id, Name, StageName from Opportunity where AccountId in: accountIds])
     	{ 
            if(opp.StageName == 'Cliente Grogestión'){
               Account a = [SELECT Name FROM Account WHERE Id =: opp.AccountId];
               opp.Name='CLIENTE GROGESTIÓN-ttt ' + a.Name ;
            }
          
          oppList.add(opp);
     	}
     	update oppList;
    } 
}