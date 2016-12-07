	function ajaxFunction2()   //functionName could be anything
	{
	//1. Create XmlHttpRequest Object
	//This could be written into an external .js file that could be used within other pages as well.
	var xmlHttp;
	
	try     // Firefox, Opera 8.0+, Safari
	{
		xmlHttp=new XMLHttpRequest();
	}
	catch (e)
	{
		try  // Internet Explorer
		{
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e)
		{
			try
			{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e)
			{
				alert("Your browser does not support AJAX!");
				return false;
			}
		}
	}
	
	//2. Call the server-side script
	//cityName is the function parameter passed when the JS function is called
	var value = document.getElementById("searchSongs").value;
	
	xmlHttp.open("GET", "list.jsp?w=" + value, true);   //q is the name of the parameter to be used in JSP
	xmlHttp.send();   //leave blank, or pass null. Not used with GET requests

	
	//3. Check the server-data is ready
	xmlHttp.onreadystatechange=function()
	{
		if(xmlHttp.readyState==4)
		{
			//4. Manipulate the DOM
			
			var serverData = xmlHttp.responseText;
			
			if(serverData == 0) {
				alert("Songs does not match search criteria");
			}
			else {
				func2(serverData);
	
			}
		}
	}

}