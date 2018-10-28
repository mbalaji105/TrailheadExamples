({
	doInit: function(component, event, helper) {
        var action = component.get("c.getAccounts");
        var noRecords = component.get("v.noOfRecordspage");
        action.setCallback(this, function(result) {
            var records = result.getReturnValue();
            alert('records::'+records.length);
            component.set("v.allAccounts", records);
            alert(Math.floor((records.length+(noRecords-1))/noRecords));
            component.set("v.maxPage", Math.floor((records.length+(noRecords-1))/noRecords));   
            helper.renderPage(component);
        });
        $A.enqueueAction(action);
	},    
    renderPage: function(component, event, helper) {
        helper.renderPage(component);
    },
     firstPage: function(component, event, helper) {
        component.set("v.pageNumber", 1);
    },
    prevPage: function(component, event, helper) {
        component.set("v.pageNumber", Math.max(component.get("v.pageNumber")-1, 1));
    },
    nextPage: function(component, event, helper) {
        component.set("v.pageNumber", Math.min(component.get("v.pageNumber")+1, component.get("v.maxPage")));
    },
    lastPage: function(component, event, helper) {
        component.set("v.pageNumber", component.get("v.maxPage"));
    }
})