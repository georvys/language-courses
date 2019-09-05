/**
 * @File Name          : AccountTrigger.trigger
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 5/20/2019, 6:10:59 PM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    5/20/2019, 5:21:47 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
trigger AccountTrigger on Account (
    before insert, 
    before update, 
    before delete, 
    after insert, 
    after update, 
    after delete,  
    after undelete) {

    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.createAccounts(Trigger.New);
    }
    // else if (Trigger.isAfter && Trigger.isInsert) {
    //     AccountHandler.CreateNewOpportunity(Trigger.New);
    // }
}