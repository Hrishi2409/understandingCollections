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

}