public class ContactAndLeadSearch{

    public static List<List<sObject>> searchContactsAndLeads(String SearchString){
    
        return [FIND:SearchString IN ALL FIELDS 
                   RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName,Department)];
    
    }


}