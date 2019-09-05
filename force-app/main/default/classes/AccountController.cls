/**
 * @File Name          : AccountController.cls
 * @Description        : 
 * @Author             : yogeorvys@brave-badger-533ap5.com
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 1:10:59 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 1:10:07 PM   yogeorvys@brave-badger-533ap5.com     Initial Version
**/
public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}