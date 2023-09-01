<cfscript>
	/*
		Use this file to set variables for the Application.cfc's "this" scope.

		Examples:
		this.name = "MyAppName";
		this.sessionTimeout = CreateTimeSpan(0,0,5,0);
	*/

	this.name = "contactapp";
	this.datasources['contactapp'] = {
          class: 'org.h2.Driver'
        , connectionString: 'jdbc:h2:file:/Users/peter/projects/hypermedia-cfwheels-htmx-contact-app/contactapp/db/h2/contactapp;MODE=MySQL'
        , username = 'sa'
        };
  // CLI-Appends-Here
</cfscript>
