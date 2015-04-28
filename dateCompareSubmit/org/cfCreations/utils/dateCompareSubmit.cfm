<cfparam type="string" name="ATTRIBUTES.dateOneName">
<cfparam type="string" name="ATTRIBUTES.dateTwoName">
<cfparam type="string" name="ATTRIBUTES.errorMessage">
<cfparam type="string" name="ATTRIBUTES.errorTitle">
<cfparam type="string" name="ATTRIBUTES.fieldName">
<cfparam type="string" name="ATTRIBUTES.fieldValue">

<cfoutput>

	<cfsavecontent variable="handler">
	
		import mx.controls.Alert; 
	
		var obj:MovieClip = this;
			   obj.id = "#ATTRIBUTES.fieldName#";
		
		var dOne = #ATTRIBUTES.dateOneName#.selectedDate.getTime();
		
		var dTwo = #ATTRIBUTES.dateTwoName#.selectedDate.getTime();
		
		if ( dOne > dTwo )
		{
			Alert.show('#ATTRIBUTES.errorMessage#','#ATTRIBUTES.errorTitle#');
		}
		else
		{
			obj.submitForm(obj);
		}
		
	</cfsavecontent>

</cfoutput>

<cfinput type="submit"
			   name="#ATTRIBUTES.fieldName#"
			   value="#ATTRIBUTES.fieldValue#"
			   onmousedown="#handler#">