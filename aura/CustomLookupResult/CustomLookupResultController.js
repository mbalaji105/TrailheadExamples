({
	 selectRecord : function(component, event, helper){      
    // get the selected Account from list  
      var getSelectRecord = component.get("v.Obj");
    // call the event   
      var compEvent = component.getEvent("oSelectedObjectEvent");
    // set the Selected Object to the event attribute.  
     compEvent.setParams({"RecordByEvent" : getSelectRecord });  
    // fire the event  
     compEvent.fire();
    },
})