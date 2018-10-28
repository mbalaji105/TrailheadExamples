@isTest(seeAllData=false)
public class testActivityHistoryController {
   static testMethod void testgetActivityHistory() {
       List<Opportunity> oppList =new List<Opportunity>();
     Opportunity parentOpportunity = new Opportunity(Name = 'parent opportunity',CloseDate = Date.valueOf('2019-01-01'),StageName = 'Sourcing Demand');
   	 insert parentOpportunity;
     Opportunity childOpportunity = new Opportunity(Name = 'parent opportunity',CloseDate = Date.valueOf('2019-01-01'),StageName = 'Sourcing Demand',
                                                   Parent_Opportunity__c=parentOpportunity.Id);
      insert childOpportunity;
       
	Task tsk1 = new Task(WhatId = childOpportunity.Id, Subject = 'Email: apex test', ActivityDate = date.today(), Status = 'Completed');
	Task tsk2 = new Task(WhatId = childOpportunity.Id, Subject = 'Call: apex test', ActivityDate = date.today(), Status = 'Completed');
	Task tsk3 = new Task(WhatId = childOpportunity.Id, Subject = 'Email: apex test', ActivityDate = date.today().addYears(-2), Status = 'Completed');
	Task[] tskList = new List<Task>{ tsk1, tsk2, tsk3 };
	insert tskList;
	Test.startTest();
       ActivityHistoryController.getActivityHistory(childOpportunity.id);
    Test.stopTest();
}
}