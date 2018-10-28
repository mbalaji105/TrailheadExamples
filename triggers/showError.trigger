trigger showError on Account (before insert) {
    for(Account actobj:trigger.new){
      if(actObj.Type == 'Other'){
        actObj.Type.addError('Type Error');
        actObj.Industry.addError('Industry Error');
        }
    }
}