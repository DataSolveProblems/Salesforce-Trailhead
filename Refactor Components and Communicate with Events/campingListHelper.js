({
   addItem: function(component, item) {
    this.saveItem(component, item, function(response){
        var state = response.getState();
        if (component.isValid() && state === "SUCCESS") {
            // all good, nothing to do.
         /*   var items = component.get("v.items");
            items.push(response.getReturnValue());
            component.set("v.items", items);*/
        }
    });
},
})
