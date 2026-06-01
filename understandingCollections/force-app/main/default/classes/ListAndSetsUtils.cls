public with sharing class ListAndSetsUtils {
  
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

    //use case 4: write a set to store unique account ids from a list of contacts associated with account.

    public void useCaseFour(){
        Set<Id> accIds = new Set<Id>();
        For (Contact con: [Select AccountId From Contact Where AccountId <> null]){
            accIds.add(con.AccountId);
        }
        System.debug('Set of unique account Ids: ' + accIds);
    }

    //use case 5: use a list to hold the names of leads where the lead source is 'Web'.

    public void useCaseFive(){
        List<Lead> LeadList = new List<Lead>();
        For(Lead ld: [Select Name,LeadSource From Lead Where LeadSource = 'Web']){
            LeadList.add(ld);
        }
        System.debug('Lead with LeadSource: ' + LeadList);
    }


    //use case 6: write a list to store contact phone numbers where the mailing state is 'California'.

    public void useCaseSix(){
        List<Contact> listOfPhNumbers = new List<Contact>();
        For(Contact con: [Select Name,Phone,MailingState From Contact Where MAilingState = 'California']){
            listOfPhNumbers.add(con.Phone);
        }
        System.debug('List of contact phone numbers where the mailing state is California' + listOfPhNumbers);
        
    }

    //use case 7: Build a set to store unique titles of contacts where the title is not null.

    public void useCaseSeven(){
        Set<String> listOfTitles = new Set<String>();
        For(Contact con: [Select Title From Contact where Title <> null]){
            listOfTitles.add(con.Title);
        }
        System.debug('Set of unique contact titles: ' + listOfTitles);
        
    }
}