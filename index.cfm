<cfinclude template="menu.cfm">

<cfparam name="url.page" default="">

<cfswitch expression="#url.page#">
    <cfcase value="about">
        <cfset pageName = "About Page">
        <cfinclude template="pages/about.cfm">
    </cfcase>
    <cfcase value="contact">
        <cfset pageName = "Contact Page">
        <cfinclude template="pages/contact.cfm">
    </cfcase>
    <cfcase value="help">
        <cfset pageName = "Help Page">
        <cfinclude template="pages/help.cfm">
    </cfcase>
    <cfcase value="products">
        <cfset pageName = "Products Page">
        <cfinclude template="pages/products.cfm">
    </cfcase>
    <cfdefaultcase>
        <cfset pageName = "Home Page">
        <cfinclude template="pages/home.cfm">
    </cfdefaultcase>
</cfswitch>


<cfset application.FRAPI.setCurrentTransactionName( pageName )>
