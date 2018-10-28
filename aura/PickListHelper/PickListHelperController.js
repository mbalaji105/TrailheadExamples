({
    doInit: function(component, event, helper) {        
        helper.fetchPickListVal(component, 'PickListId', component.get("v.SelectedValue"));
 
    },
	onPicklistChange : function(component, event, helper) {
		// get the value of select option
        var SelectPicklist = component.getEvent("PicklistSelected");
        SelectPicklist.setParams({
            SelectedValue: event.getSource().get("v.value")
        }).fire();      
	}
})