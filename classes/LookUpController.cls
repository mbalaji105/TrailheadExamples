/*
 This is the Controller Class for the Custom Lookup component.
 */
public class LookUpController {
  @AuraEnabled
 public static List <sObject> fetchRecords(String searchKeyWord, String ObjName, string count) {
  String searchKey = searchKeyWord + '%';
  List < Sobject > lstOfObj =  Database.query('SELECT id, Name '+' FROM '+ObjName+' WHERE Name LIKE \''+searchKey+'\' limit ' + count);
 
  return lstOfObj ;
 }
}