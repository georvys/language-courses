/**
 * @File Name          : AccountHandler.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Class              : AccountHandler
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 5:35:20 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 5:20:10 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class AccountHandler {
    public static void CreateNewOpportunity(List<Account> accts) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opps.add(opp);
        }
        if (opps.size() > 0) {
            insert opps;
        }
    }
}