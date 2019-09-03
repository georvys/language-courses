public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String pm) {
        List<List<sObject>> temp = new List<List<sObject>>();
        
        temp = [FIND :pm IN ALL FIELDS RETURNING Lead(Name),Contact(FirstName,LastName)];
        
        Contact[] searchContacts = (Contact[])temp[1];
        for (Contact c : searchContacts) {
    		System.debug(c.LastName + ', ' + c.FirstName);
		}
        
        return temp;
    }
}