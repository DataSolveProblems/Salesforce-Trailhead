public with sharing class CampingListController {

    /**
     * This method will insert the camping item record
     * 
     */
    @AuraEnabled
    public static void saveItem (Camping_Item__c campingItem) {
        //insert the campingItem record
        insert campingItem;
    }
    
     /**
     * This method fetches the Camping_Item__c records and return as list
     */
    @AuraEnabled
    public static List<Camping_Item__c> getItems() {
        //fetch the active records using soql query
        List<Camping_Item__c> campingItems = [SELECT Id,Name,Price__c,Packed__c,Quantity__c FROM Camping_Item__c];
        //return the list of camping items
        return campingItems;
    } 
    
    
}