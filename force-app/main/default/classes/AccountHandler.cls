public class AccountHandler {
    public static Account insertNewAccount(String accountName){
       Account ac = new Account();
       try {
    		// This causes an exception because 
    		//the required Name field is not provided.
         	  
            ac.Name = accountName;
    		insert ac;
    	} catch (DmlException e) {
        	System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
		}
        return ac;
    }
}