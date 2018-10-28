({
	usingMap : function(component, event, helper) {        
		var action = component.get("c.retrieveValues");
        action.setCallback(this,function(response){
            var values = [];
            var result = response.getReturnValue();
            for(var key in result){
                values.push({
                    class:'optionClass',
                    label:key,
                    value:result[key]});     				
            }
            component.set("v.optionsList",values);
        });
        $A.enqueueAction(action);
	}
})