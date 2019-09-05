/**
 * @File Name          : AccountTriggerHandler.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 6:20:13 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 5:56:04 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class AccountTriggerHandler {
    
    public static void createAccounts(List<Account> accts){
        List<Account> acctsUpdate = new List<Account>();
        for (Account iAcc : accts) {
            if(iAcc.BillingState != iAcc.ShippingState){
                iAcc.ShippingState = iAcc.BillingState;
            }
        }
    }

}