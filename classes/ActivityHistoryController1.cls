public class ActivityHistoryController1 {
	public static List<ActivityHistory> getActivityHistory(String oppRecId){
        List<ActivityHistory> activityHistoryList = new List<ActivityHistory>();
        Opportunity oppObj = new Opportunity();
        oppObj = [select id,name,(select id,subject,WhoId,whatId,IsTask,ActivityDate,OwnerId,LastModifiedDate 
                               	from ActivityHistories) from Opportunity where id=:oppRecId];
        activityHistoryList = oppObj.ActivityHistories;
        return activityHistoryList;
        
    }
    public static List<ActivityHistory> getHistory(String oppRecId){
        List<ActivityHistory> activityHistoryList = new List<ActivityHistory>();
        Opportunity oppObj = new Opportunity();
        oppObj = [select id,name,(select id,subject,WhoId,whatId,IsTask,ActivityDate,OwnerId,LastModifiedDate 
                               	from ActivityHistories) from Opportunity where id=:oppRecId];
        activityHistoryList = oppObj.ActivityHistories;
        return activityHistoryList;
        
    }
    public Static String getMessage(){
        return 'success';
    }
}