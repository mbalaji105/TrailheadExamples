public class TestQueueRetrieval1 {
	private static final Map<Id,Group> map1 = TestQueueRetrieval.retrieveQueue();
    private static final Map<Id,Group> map2 = TestQueueRetrieval.retrieveQueue();
    public static void display(){
        System.debug('map1::'+map1);
        System.debug('map2::'+map2);
    }
}