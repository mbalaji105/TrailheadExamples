({
	handleRecordSelection : function(component, event, helper) {
        alert('hi'+event.getParam("SelectedValue"));
		component.set("v.contactObj.AccountId", event.getParam("SelectedValue"));
	},
    contactSave:function(component, event, helper){
        var action = component.get("c.saveContact");
        var contRec = component.get("v.contactObj");
        action.setParams({"contObj":contRec});
        action.setCallback(this,function(data){
            var result = data.getReturnValue();
            alert(result);
        });
        $A.enqueueAction(action);
        
    }
})