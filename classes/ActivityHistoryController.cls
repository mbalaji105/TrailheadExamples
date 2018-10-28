public class ActivityHistoryController {
     @AuraEnabled
    public static List<ActivityHistory> getActivityHistory(String oppRecId){
        List<ActivityHistory> activityHistoryList = new List<ActivityHistory>();
        Opportunity oppObj = new Opportunity();
        List<Opportunity> oppList = new List<Opportunity>();
        oppList = [select id,Parent_Opportunity__c from Opportunity where Id=:oppRecId and Parent_Opportunity__c!=null];
        if(oppList!=null && oppList.size()>0){
            oppObj = [select id,name,(select id,subject,Who.Name,what.Name,IsTask,ActivityDate,Owner.Name,LastModifiedDate 
                               	from ActivityHistories) from Opportunity where id=:oppList[0].Parent_Opportunity__c];
        	activityHistoryList = oppObj.ActivityHistories;
        }
        
        return activityHistoryList;
        
    }   
}