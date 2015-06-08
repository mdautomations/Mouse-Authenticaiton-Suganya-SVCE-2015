var totalscore = 0;
var finalcourse = " ";

$(document).ready(function()
{
	var email = cookies.getRegistrationUrlCookie();
	 $.ajax({
		         type: 'POST',
		         url: '/autocourse',
		         data : {email:email},
		         async : true,
		         success: function(data)
      			 {
		        	 var jsonvars				=	JSON.parse(data);
		        	 console.log("ui");
		        	 console.log(jsonvars);
		       	  	dtable = $('#datastables').dataTable({
	 					"bDestroy" : true,
	 					"aoColumns" : [{
	 						"sTitle" : "Subject",
	 						"sWidth" : "50%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Significance",
	 						"sWidth" : "25%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Goal",
	 						"sWidth" : "25%",
	 						"sClass" : "center"
	 					}]
	 				});
	 				dtable.fnClearTable();		
	 				var newRow = [];
					for(index in jsonvars)
					{
						newRow[0] = jsonvars[index].subjects;
						var count = jsonvars[index].count;
						if(count==0)
						{
							newRow[1] = parseInt(count)+1;
						}
						else
						{
							newRow[1] = count;
						}
						newRow[2] = jsonvars[index].goal;
						dtable.fnAddData(newRow);
					}
						dtable.fnDraw();
      			 }
		        	 
			 });	
});
