public class PicklstHelper {
	@AuraEnabled
 	public static List < String > getselectOptions(String objectName, string fieldName) {
       List<String> optionsList = new List<String>();
       list <Schema.PicklistEntry>  piclistValueList = schema.getGlobalDescribe().get(objectName).getDescribe().fields.getMap().get(fieldName).getDescribe().getPicklistValues();
        for(Schema.PicklistEntry pickEntryObj:piclistValueList){
            optionsList.add(pickEntryObj.getValue());
        }
        
        return optionsList;
    }
}