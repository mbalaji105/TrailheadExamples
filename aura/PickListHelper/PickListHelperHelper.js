({
	 fetchPickListVal: function(component, elementId, selectedVal) {
        var action = component.get("c.getselectOptions");
        action.setParams({
            "objectName": component.get("v.objectName"),
            "fieldName": component.get("v.FieldName")
        });
        var opts = [];
        action.setCallback(this, function(response) {
            if (response.getState() == "SUCCESS") {
                var allValues = response.getReturnValue();
 
                if (allValues != undefined && allValues.length > 0) {
                    opts.push({
                        class: "optionClass",
                        label: "--- None ---",
                        value: ""
                    });
                }
                for (var i = 0; i < allValues.length; i++) {
                    if(selectedVal == allValues[i])
                    {
                        opts.push({
                            class: "optionClass",
                            label: allValues[i],
                            value: allValues[i],
                            selected: "true"
                        });
                        var SelectPicklist = component.getEvent("PicklistSelected");
                        SelectPicklist.setParams({
                            SelectedValue: selectedVal
                        }).fire(); 
                    }
                    else
                    {
                        opts.push({
                            class: "optionClass",
                            label: allValues[i],
                            value: allValues[i],                          
                        });
                	}
                }
                component.find(elementId).set("v.options", opts);
            }
        });
        $A.enqueueAction(action);
    }
})