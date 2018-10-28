({
	
    doInIt : function(component, event, helper){
        alert('hi');
        var cmpEvent = component.getEvent("sendMessage");
         cmpEvent.setParams({
            "message" : "A component event fired me. " +
            "It all happened so fast. Now, I'm here!" });
        cmpEvent.fire();
    }
})