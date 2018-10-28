public class LightningRadioGroup {
   @Auraenabled
    public static Map<string,String> retrieveValues(){
        Map<String,String> dummyValuesMap = new Map<String,String>();
        dummyValuesMap.put('balaji','balaji');
        dummyValuesMap.put('Sree Valli','Sree Valli');
        return dummyValuesMap;
    }
     @Auraenabled
    public static String retrieValuesinJSON(){
        JSONGenerator gen = JSON.createGenerator(true);
        gen.writeStartArray();
        gen.writeStartObject();
            gen.writeStringField('class','optionClass');
            gen.writeStringField('label','Balaji');
            gen.writeStringField('value','Balaji');
        gen.writeEndObject();
         gen.writeStartObject();
            gen.writeStringField('class','optionClass');
            gen.writeStringField('label','Alivelimanga');
            gen.writeStringField('value','Alivelimanga');
        gen.writeEndObject();
        gen.writeEndArray();
        String jsonString= gen.getAsString();
        System.debug('jsonString:'+jsonString);
        return jsonString;
    }
}