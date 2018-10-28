({
	usingJSON : function(component, event, helper) {        
		var action = component.get("c.retrieValuesinJSON");
        action.setCallback(this,function(response){           
            var result = response.getReturnValue();
            component.set("v.optionsJSON",JSON.parse(result));           
        });
        $A.enqueueAction(action);
	}
})