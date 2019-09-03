public class ContactSearch {
    public static List<Contact> searchForContacts(String LastNameIn, String codMail){
		List<Contact> searchContacts = [SELECT Id, Name 
                          FROM Contact WHERE LastName=:LastNameIn and MailingPostalCode=:codMail];
       	
        System.debug('lista: ' + searchContacts );
        return searchContacts; 
    }
}