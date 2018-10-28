({
	handleUploadFinished : function(component, event, helper) {	
    alert('hi');
        // Get the list of uploaded files
        var uploadedFiles = event.getParam("files");
        //set action to call updatePicturePath method from Server-side controller
        var action = component.get("c.updatePicturePath");
        action.setParams({
            recId : component.get("v.recordId")
        });
        action.setCallback(this, function(a){
        	if(a.getState() === "SUCCESS"){
                alert('hi::'+a.getReturnValue());	
            }
        });
    	$A.enqueueAction(action);
	},
    doInit : function(component, event, helper){
        var recordId1 = component.get("v.recordId");       
        alert('hi:'+recordId1);
    }
})