({
	init: function (component, event, helper) {
        var recId = component.get("v.recordId");
        //alert(recId);
        var action = component.get("c.getActivityHistory");
        action.setParams({oppRecId : component.get("v.recordId")});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
              
				component.set("v.activityHistoryList",response.getReturnValue());
               
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        $A.enqueueAction(action);
    }
})