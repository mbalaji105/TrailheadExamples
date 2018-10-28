public class StringArrayTest{
    public static List<String> generateStringArray(integer numberofstrings){
    
        List<String> stringList = new List<String>();
        for(integer i=0;i<numberofstrings;i++){
            stringList.add('Test '+i);
        }
        return stringList;
    
    }



}