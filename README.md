# FRAPI Transaction Name Demo

A simple example of how to use FRAPI to customize the transaction name for each request.

This simple site runs all traffic through `index.cfm` and includes the actual page via cfinclude driven from a URL variable.

Using the FRAPI SDK, we can override the default transaction name of `/index.cfm` to be an arbitrary name of our choosing. Note, this does not affect the "URL" as reported by FusionReactor, but specifcally the "Transaction Name".  

---

The two important bits of code are as follows:

## Create the FRAPI SDK (once)

In this app, we're creating a single instance of the FRAPI SDK in the `onApplicationStart()` method of our `Application.cfc`.

```js
function onApplicationStart() {
    application.FRAPI = new modules.FRAPISDK.models.FRTransService();
}
```

You can create the CFC instance wherever you want, but only create one instance.  Don't re-created the CFC on every request.

## Set the transaction name

Now, inside our request, we can use the `setCurrentTransactionName()` method to override FusionReactor's default transaction name.  This code is at the bottom of the `index.cfm` file and is based on the switch statement above it.

```html
<cfset application.FRAPI.setCurrentTransactionName( pageName )>
```

Now in the FusionReactor "Request History" page, we can see our custon transaction name under the `App/Txn` column.  

---

## Default Name
Here is what your default transaction name may look like:

![Default Transaction Name](/images/default-name.png)

## Custom Name
And here is an example of what your custom transaction name will look like:

![Default Transaction Name](/images/custom-name.png)