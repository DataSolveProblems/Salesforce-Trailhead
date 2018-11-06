## Refactor Components and Communicate with Events

* Refactor the input form for camping list items into its own component and communicate with component events.
* Replace the HTML form in the campingList component with a new campingListForm component that calls the clickCreateItem JavaScript controller action when clicked.
* The campingList component listens for a c:addItemEvent event and executes the action handleAddItem in the JavaScript controller. The handleAdditem method saves the record to the database and adds the record to the items value provider.
* The addItemEvent event is of type component and has a Camping_Item__c type attribute named item.
* The campingListForm registers an addItem event of type c:addItemEvent.
* The campingListFormController JavaScript controller calls the helper's createItem method if the form is valid.
* The campingListFormHelper JavaScript helper creates an addItem event with the item to be added and then fires the event. It then resets the newItem value provider with a blank sObjectType of type Camping_Item__c.
