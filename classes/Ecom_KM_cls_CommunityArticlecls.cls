public with sharing class Ecom_KM_cls_CommunityArticlecls {
  public List<Q_A__kav> qnAKnowledgeArticleList{get;set;}
  public String dataCategory{get;set;}
  public String productCategory{get;set;}
  public String ul{get;set;}
  public String urlString{get;set;}
  public List<string> nMark{get;set;}
  public Ecom_KM_cls_CommunityArticlecls(){
     dataCategory = ApexPages.currentPage().getParameters().get('country');
     productCategory = ApexPages.currentPage().getParameters().get('brand'); 
    urlString = ApexPages.currentPage().getHeaders().get('referer'); 
    System.debug('urlString::'+urlString);
    //urlString = 'https://sociaq3sp3-digitalsports-adidas.cs88.force.com/Demo3/s/?language=en_US&country=Norway__C&brand=adidas__c';
    //System.debug('urlString:::'+urlString.split('\\?'));
    if(urlString!=null && urlString.split('\\?')!=null && urlString.contains('country')){
      urlString = urlString.split('\\?')[1];  
      List<String> urlParams = new List<String>();
      //urlString = urlString.split('&')[1].split('=')[1]+'#'+urlString.split('&')[2].split('=')[1];
      if(urlString.split('&')!=null){
        dataCategory = urlString.split('&')[1].split('=')[1];
        productCategory = urlString.split('&')[2].split('=')[1];
      }
    }
    /*urlParams  = urlString.split('&');
    if(urlParams!=null && urlParams.size()>0){
    for(String paramObj:urlParams){
                  if(paramObj.split('=')!=null && paramObj.split('=').size()>0){
                      if(paramObj.split('=')[0]=='country'){
                          //System.debug('country:'+paramObj.split('=')[1]);
                          dataCategory = paramObj.split('=')[1];
                          urlString = dataCategory;
                      }
                      if(paramObj.split('=')[0]=='brand'){
                         // System.debug('brand:'+paramObj.split('=')[1]);
                          productCategory = paramObj.split('=')[1];
                      }
                  }
          }
    }*/
    qnAKnowledgeArticleList  = new List<Q_A__kav>();
    /*qnAKnowledgeArticleList = [select Id,Language,URLName from Q_A__kav 
                  where Language='en_US' and PublishStatus='Online'];*/
    String qryString = 'SELECT Id, title, UrlName, LastPublishedDate,LastModifiedById FROM Q_A__kav WHERE (PublishStatus = \'online\' and Language = \'en_US\')';
      if(dataCategory!=null && productCategory!=null)
        qryString+=' WITH DATA CATEGORY Region__c ABOVE_OR_BELOW '+dataCategory+ ' AND Products_del__c ABOVE_OR_BELOW '+productCategory;
      System.debug('qryString::'+qryString);
      urlString+='--->'+qryString;  
      qnAKnowledgeArticleList = Database.query(qryString);
      
                  
  }
  
   
   public pagereference showarticles(){
     if(urlString!=null && urlString.contains('?')){
      //String urlString = 'https://sociaq3sp3-digitalsports-adidas.cs88.force.com/Demo3/s/?language=en_US&country=Norway__C&brand=adidas__c';
      System.debug(':>'+urlString.split('\\?'));    
      List<String> urlParams = new List<String>();
      if(urlString.split('\\?')!=null && urlString.split('\\?').size()>0){
          urlParams = urlString.split('\\?')[1].split('&');
          System.debug('urlParams::'+urlParams);
          if(urlParams!=null && urlParams.size()>0){
              for(String paramObj:urlParams){
                  if(paramObj.split('=')!=null && paramObj.split('=').size()>0){
                      if(paramObj.split('=')[0]=='country'){
                          System.debug('country:'+paramObj.split('=')[1]);
                          dataCategory = paramObj.split('=')[1];
                          urlString = dataCategory;
                      }
                      if(paramObj.split('=')[0]=='brand'){
                          System.debug('brand:'+paramObj.split('=')[1]);
                          productCategory = paramObj.split('=')[1];
                      }
                  }
              }
          }        
      }
    }
     return null;
   }
  
}