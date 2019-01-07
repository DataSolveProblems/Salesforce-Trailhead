List<List<sObject>> searchContactLead = ContactAndLeadSearch.searchContactsAndLeads('Smith');

List<Lead> leadList = New List<Lead>();
List<Contact> contList = New List<Contact>();

leadList = ((List<Lead>)searchContactLead[0]);
contList = ((List<Contact>)searchContactLead[1]);

for(Lead a:leadList)
{
System.debug('Found following Leads ' + a.Name);
}
for(Contact cts:contList){
System.debug('Found following Contacts ' + cts.FirstName + '' + cts.LastName);
}
