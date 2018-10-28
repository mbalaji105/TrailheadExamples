public class ContactCls {
    @Auraenabled
    public  static List<ContactWrapper> retrieveContacts(){
        List<ContactWrapper> contactWrapperList = new List<ContactWrapper>();
        for(Contact contactObj:[select id,firstName,LastName from Contact where firstName!=null order by createddate desc limit 6]){
            ContactWrapper contactWrapObj = new ContactWrapper();
            contactWrapObj.contactObj = contactObj;
            contactWrapObj.isSelected = false;
            contactWrapperList.add(contactWrapObj);
        }
        return contactWrapperList;
    }
    @Auraenabled
    public static String updateContacts(String contactString){
        String ids = '';
        List<ContactWrapper> contactWrapList = (List<ContactWrapper>)JSON.deserialize(contactString, List<ContactWrapper>.class);
        for(ContactWrapper contacctWrapObj:contactWrapList){
            if(contacctWrapObj.isSelected){
                ids+=contacctWrapObj.contactObj.Id;
            }
        }
        return ids;
    }
    @Auraenabled
    public static ContactWrapper saveContact(Contact contObj){
        ContactWrapper contWrapperObj = new ContactWrapper();
        insert contObj;
        if(contObj.Id!=null){
            contWrapperObj.contactObj = contObj;
            contWrapperObj.isSelected = false;
        }
        
        return contWrapperObj;
    }
}