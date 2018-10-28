public class AccountHandler{

    public static Account insertNewAccount(String actName){
    
        try{
            Account act = new Account();
            act.Name = actName;
            insert act;
            return act;
        
        }
        Catch(DMLException e){
            return null;
        }
    }


}