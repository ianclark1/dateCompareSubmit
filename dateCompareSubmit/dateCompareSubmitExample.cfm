<!--- This is an example for how to use the dateCompareSubmit custom tag --->
<!--- For more information or any enquiries/requests, please contact me on my blog--->
<!--- http://www.cf-creations.co.uk/ --->

<cfform format="flash" action="#CGI.SCRIPT_NAME#" height="400">
	
	<cfformgroup type="vbox" height="200" />
	
	<cfformgroup type="panel">
		
		<cfinput type="datefield"
						name="dateOne"
						label="Date One"
						width="100">
		
		<cfinput type="datefield"
				 	   name="dateTwo"
				 	   label="Date Two"
				 	   width="100">
		<!--- To use our custom tag with cfmodule we need to create a structure of the arguments we need to parse --->
		<cfset str = structNew()>
		
		<!--- the first property of the struct is dateOneName, this is the input name of your "FROM" date --->
		<cfset str["dateOneName"] = "dateOne">
		<!--- the second property of the struct is dateTwoName, this is the input name of your "TO" date --->
		<cfset str["dateTwoName"] = "dateTwo">
		<!--- the third property of the struct is fieldName, this is the input name of your submit button --->
		<cfset str["fieldName"] = "saveData">
		<!--- the fourth property of the struct is fieldValue, this is the label of your submit button --->
		<cfset str["fieldValue"] = "Save">
		<!--- the fifth property of the struct is errorMessage, this is the message which gets displayed when the "TO" date is before the  "FROM"--->
		<cfset str["errorMessage"] = "Date One needs to be before Date Two for you to continue">
		<!--- the sixth property of the struct is errorTitle, this is the title for your error message --->
		<cfset str["errorTitle"] = "Date Error">
				
		<cfmodule templateorg/cfCreations/utils/dateCompareSubmit.cfm" attributecollection="#str#">
	
	</cfformgroup>
	
</cfform>