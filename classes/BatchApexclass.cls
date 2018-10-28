public class BatchApexclass implements Database.batchaBle<sobject>{
    public database.queryLocator start(Database.BatchableContext bc){
        
        return database.getQueryLocator('select id,name from Account');
    }
    public void execute(Database.BatchableContext BC,List<Account> accountList){
        
    }
    public void finish(Database.BatchableContext BC){
        
    }
   
}