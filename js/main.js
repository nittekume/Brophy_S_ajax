(function() {
"use strict";
		var searchRequest;
		var searchField = document.querySelector("#searchbox");

		function showResults(e){
			var str = e.currentTarget.value;//capture the value the user entered
			searchRequest = createRequest();//util function that creates XHR object
			if (searchRequest===null) {//subway car cannot be created send message
				alert("Your browser needs updating, does not support AJAX");
				return;
			}

			var url="searchcharacter.php?searchstring="+str;//? used to seperate query strings. also where to send'train'
			searchRequest.onreadystatechange = searchStatus;//monitering of schedule
			searchRequest.open("GET",url,true);//open the tunnel
			searchRequest.send(null);//send off the train
		}

		function searchStatus(){
			if (searchRequest.readyState===4||searchRequest==="complete") {
				document.querySelector("#txtHint").innerHTML=searchRequest.responseText;
			}
		}

		searchField.addEventListener("keyup",showResults, false);
})();		

//function call is in html so we place it out side seaf, otherwise html cannot see it.
////php writes this function into our html, so it looks like this displayinfo(3)
function displayInfo(id){
	"use strict";

	var displayRequest;

	function displayCustomer(id) {
		displayRequest = createRequest();//create XHR object / subway car

		if (displayRequest===null) {
			alert("please try again or upgrade your browser");
			return;
		}

		var url="displaycharacter.php?charid="+id;//? used to seperate query strings. also where to send'train'
		displayRequest.onreadystatechange = displayStatus;//monitering of schedule
		displayRequest.open("GET",url,true);//open the tunnel
		displayRequest.send(null);//send off the train
	}

	function displayStatus(){
		if (displayRequest.readyState===4||displayRequest.readyState==="complete"){
			document.querySelector("#maindiv").innerHTML=displayRequest.responseText;
		}
	}

	displayCustomer(id);
	document.querySelector('#txtHint').innerHTML = "";
}


	
	
	
	