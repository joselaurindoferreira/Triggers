@isTest
public class TestNotifyAllBrokers {
    @isTest static void TestInsertNotifyAllBrokers() {
        Property__c prop = new Property__c(Name='Test Property');
        
        Broker__c brok = new Broker__c(Name='José', Email__c='joselaurindo14@gmail.com');
        insert brok;

        Test.startTest();
            Database.SaveResult resultados = Database.insert(prop, true);
        Test.stopTest();
        System.assertEquals(true, resultados.isSuccess());
    }
}