public class TestQueueRetrieval {
	 private static Map<Id, Group > GroupMap = new Map<Id,Group >([select Id,name from Group where Type = 'Queue' LIMIT 50000]);
     public static Map<Id,Group> groupMap1 = new Map<Id,Group>();
 	public static Map<Id, Group > retrieveQueue(){
        for(id grpId:GroupMap.keyset()){
            groupMap1.put(grpId,GroupMap.get(grpId));
        }
        return groupMap1;
    }
    
}