({
	myAction : function(component, event, helper) {        
		var action = component.get("c.retrieveContacts");
        action.setCallback(this,function(data){
            var result = data.getReturnValue();
            component.set("v.contactList",result);
        });
        $A.enqueueAction(action);
	},
    updateSelectedContacts : function(component,event,helper){
       var contactList = component.get("v.contactList");
       var action = component.get("c.updateContacts");
        action.setParams({"contactString":JSON.stringify(contactList)});
        action.setCallback(this,function(data){
            var result = data.getReturnValue();
            alert(result);
        });
        $A.enqueueAction(action);       
    },
    contactSave : function(component,event,helper){
        var contactObj = component.get("v.contObj");
        var contactsList = component.get("v.contactList");
        var action = component.get("c.saveContact");
        action.setParams({"contObj":contactObj});
        action.setCallback(this,function(data){
            var result = data.getReturnValue();           
            contactsList.splice(0,0,result);             
            component.set("v.contactList",contactsList);          
        })
        $A.enqueueAction(action);
    }
})