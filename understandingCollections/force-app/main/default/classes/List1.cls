public with sharing class List1 {
  
 public void listUseCaseOne(){
    List<Account> nameOfAccList = new List<Account>();
    List<Account> accRecords = [Select Id, Name From Account Where Name != null];

    for(Account acc: accRecords){
        nameOfAccList.add(acc);
    }

    System.debug('List of Accounts: ' + nameOfAccList);
 }    
}