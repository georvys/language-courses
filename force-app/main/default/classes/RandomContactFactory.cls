public class RandomContactFactory {
    public static List<Contact> generateRandomContacts (Integer numContact, String lastNameContact){
        List<Contact> generatedContact = new List<Contact>();
        
        for ( Integer i=0; i<=numContact; i++  ) {
            Contact cct = new Contact(FirstName='Test '+ i);
            generatedContact.add(cct);
        }
        
        List<Contact> returnContact = new List<Contact>();
        for (Integer j=0;j<numContact;j++) {
            generatedContact[j].LastName = lastNameContact;
            Contact ccts = generatedContact[j] ;
            returnContact.add(ccts);
        }        
        
        return returnContact;
    }
}