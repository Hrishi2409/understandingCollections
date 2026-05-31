public with sharing class List1 {
  
    // use case 1: to store the list of accounts and display it in debug log
 public void listUseCaseOne(){
    List<Account> nameOfAccList = new List<Account>();
    List<Account> accRecords = [Select Id, Name From Account Where Name != null];

    for(Account acc: accRecords){
        nameOfAccList.add(acc);
    }

    System.debug('List of Accounts: ' + nameOfAccList);
 }    

    //use case 2: to initialise a set of email addresses and add unique emails to it.
    public void useCaseTwo(){
        Set<String> emailSet = new Set<String>();
        For(Contact con: [Select Id,Email From Contact Where Email <> null]){
            emailSet.add(con.Email);
        }

        System.debug('Set of unique Email Addresses: ' + emailSet);
    }

    //use case 3: build a list to hold all opportunities amounts for opportunities with an 'Open' stage.

    public void useCaseThree(){
        List<Opportunity> oppList = new list<Opportunity>();
        For(Opportunity opp: [Select Amount From Opportunity Where StageName <> 'Closed Won' And StageName <> 'Closed Lost']){
            oppList.add(opp);
        }
        System.debug('List of Open Opportunity Amounts: ' + oppList);
    }

}