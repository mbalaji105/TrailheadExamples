({
	fetchHistory : function(component, event, helper) {
        alert('hi');
		var action = component.get("c.getMessage");
        action.setCallback(this,function(data){
            var result = data.getReturnValue();
            aler(result);
        });
        $A.enqueueAction(action);
        
	}
})