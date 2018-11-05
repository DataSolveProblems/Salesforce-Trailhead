**Save and Load Records with a Server-Side Controller**

Persist your records to the database using a server-side controller. The campingList component loads existing records when it starts up and saves records to the database when the form is submitted.

* Create a CampingListController Apex class with a getItems method and saveItem method.
* Add a doInit initialization handler that loads existing records from the database when the component starts up.
* Modify the JavaScript controller to use a createItem method in the helper to save records to the database from a valid form submission. The new items are added to the controller's items value provider.
