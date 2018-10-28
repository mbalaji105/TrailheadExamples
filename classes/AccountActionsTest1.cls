@isTest
private class AccountActionsTest1 {
    testMethod static void createContact(){
        Account actObj = new Account();
        actObj.Name = 'Balaji';
        actObj.Type = 'Prospecting';
        insert actObj;
    }
}