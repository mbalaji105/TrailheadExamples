<aura:application extends="force:slds">
    <aura:attribute name="recordId" type="String"/>
    <c:ImageUploader recordId="{!v.recordId}"/>
</aura:application>