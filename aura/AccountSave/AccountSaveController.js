({
	saveAct : function(component, event, helper) {       
        var actRec = component.get("v.accountObj");
		var action = component.get("c.saveAccout");
        action.setParams({"actObj":actRec});
        action.setCallback(this,function(response){
            var result = response.getReturnValue();            
        });
        $A.enqueueAction(action);
	},
    changeValue : function(component,event,helper){        
        component.set("v.accountObj.Type", event.getParam("SelectedValue"));
    }
})