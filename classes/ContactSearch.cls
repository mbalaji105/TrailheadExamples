public class ContactSearch{

    public static List<Contact> searchForContacts(string lastname,string  postalcode){
       
       return [select id,name from Contact where lastName=:lastname and MailingPostalCode=:postalcode];
    
    }


}