({
	fetchHistory: function (component, event, helper) {
        var recId = component.get("v.recordId");
        alert(recId);
        var action = component.get("c.getMessage");
        //action.setParams({oppRecId : cmp.get("v.recordId")});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                alert("From server: " + response.getReturnValue());

                
            }            
        });

       // $A.enqueueAction(action);
    }
})