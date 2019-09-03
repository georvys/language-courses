@isTest
public class TestRestrictContactByName {
    @isTest static void restrictContactByName() {
		Contact cct = new Contact(LastName='INVALIDNAME');		

        Test.startTest();
        	Database.SaveResult result = Database.insert(cct, false);
        Test.stopTest();
        
        
        
        System.assert(!result.isSuccess());
		System.debug('lastname: ' + result.getErrors()[0].getMessage() );		        
    }
}