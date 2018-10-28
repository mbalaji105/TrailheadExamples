public class ContactSavecls{
    @Auraenabled
    public static String saveContact(Contact contObj){
        insert contObj;
        return contObj.Id;
    }
}