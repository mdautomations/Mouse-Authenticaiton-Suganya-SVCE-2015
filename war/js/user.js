$(document).ready(function()
{
	 $.ajax({
         type: 'POST',
         url: '/getNewDesignAccessList', 
         async : true,
         success: function(data)
			 {
	 			 jsonvar				=	JSON.parse(data);			 				
	 				console.log(jsonvar);
	 			  dtable = $('#mainTable').dataTable({
	 					"bDestroy" : true,
	 					"aoColumns" : [ {
	 						"sTitle" : "Name",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Email",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					}, {
	 						"sTitle" : "Phone",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					}, {
	 						"sTitle" : "Password",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Date",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					}]
	 				});
	 				dtable.fnClearTable();			
					
					var newRow = [];
					for(index in jsonvar)
					{
						console.log(jsonvar[index].name);
						newRow[0] = jsonvar[index].name;
						newRow[1] = jsonvar[index].email;
						newRow[2] = jsonvar[index].phonenumber;
						newRow[3] = jsonvar[index].password;
						newRow[4] = jsonvar[index].date;
						dtable.fnAddData(newRow);
					}
						dtable.fnDraw();
				  }
	 });
});
