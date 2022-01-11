trigger notifyAllBrokers on Property__c (after insert) {
    List<Broker__c> corretores = new List<Broker__c>([SELECT Email__c FROM Broker__c]);
   	List<Property__c> ps = new List<Property__c>(Trigger.New);
    String aux;
    for(Broker__c b : corretores){
        for(Property__c p : ps){
        	aux = (String) b.Email__c; 
            EmailManager.sendMail(aux, 'One propertie has inserted!', p.Name);    
        }
    }
}
