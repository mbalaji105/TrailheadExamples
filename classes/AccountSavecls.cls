public class AccountSavecls {
		@Auraenabled
    public static string saveAccout(Account actObj){
        insert actObj;
        return actObj.Id;
    }
}