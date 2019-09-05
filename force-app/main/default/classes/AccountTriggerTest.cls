/**
 * @File Name          : AccountTriggerTest.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 6:20:30 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 6:01:06 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
private class AccountTriggerTest {

    @isTest static void createAccounts_Test(){
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(
                Name='Test Account ' + i,
                BillingState = 'CA',
                ShippingState = 'CA2'
            );
            accts.add(acct);
        } 

        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();

        List<Account> verifyAccts = [SELECT Id, BillingState, ShippingState FROM Account];
        System.assertEquals(200, verifyAccts.size());   

        for(Account iAccount : verifyAccts){
            System.assertEquals('CA', iAccount.ShippingState);   
        }
    }
    
}