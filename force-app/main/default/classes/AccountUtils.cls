/**
 * @File Name          : AccountUtils.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 5:07:47 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 4:59:53 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public without sharing class AccountUtils {
    
    public static List<Account> accountsByState(String iParams) {
        return new List<Account>([SELECT Id, Name FROM Account WHERE BillingState =: iParams]);
    }
}