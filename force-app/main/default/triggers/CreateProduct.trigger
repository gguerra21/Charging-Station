trigger CreateProduct on Partner_Product__c (after insert, after update) {
    
    for(Partner_Product__c a : Trigger.new){
        Product2 newProduct = new Product2(
        Name=a.Name
        );
        insert newProduct;
    }

}