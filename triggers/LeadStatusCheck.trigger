trigger LeadStatusCheck on Lead (before update) {
System.debug('update called---');

    for(Lead leadObj:trigger.new){
       if(trigger.newMap.get(leadObj.Id).status!=trigger.oldMap.get(leadObj.Id).status){
           System.debug('update called--- status changed');
       }       
     }  


}