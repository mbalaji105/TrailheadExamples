({   
	renderPage: function(component) {
        var noRecords = component.get("v.noOfRecordspage");
		var records = component.get("v.allAccounts"),
            pageNumber = component.get("v.pageNumber"),
            pageRecords = records.slice((pageNumber-1)*noRecords, pageNumber*noRecords);
        	component.set("v.currentList", pageRecords);
	}
})