$(document).ready(function()
{
	$.ajax
	({
	        type: 'POST',
	        url: '/getprofdetails', 
	        async : true,
	        success: function(data)
			 {
       	 			console.log(data);
       	 			var jsonvars				=	JSON.parse(data);			 				
       	 			console.log(jsonvars);
       	 			console.log("dsfs");
       	 			dtable = $('#datastable').dataTable({
	 					"bDestroy" : true,
	 					"aoColumns" : [ {
	 						"sTitle" : "Name",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Email",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					}, {
	 						"sTitle" : "Degree",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					}, {
	 						"sTitle" : "Department",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Gender",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Goal",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Greatness",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Syllabus",
	 						"sWidth" : "20%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "TotalCredit",
	 						"sWidth" : "10%",
	 						"sClass" : "center"
	 					}]
	 				});
	 				dtable.fnClearTable();			
					
					var newRow = [];
					for(index in jsonvars)
					{
						console.log("hello :: "+jsonvars[index].name);
						newRow[0] = jsonvars[index].name;
						newRow[1] = jsonvars[index].email;
						newRow[2] = jsonvars[index].degree;
						newRow[3] = jsonvars[index].department;
						newRow[4] = jsonvars[index].gender;
						newRow[5] = jsonvars[index].goal;
						newRow[6] = jsonvars[index].greatness;
						newRow[7] = jsonvars[index].syllabus;
						newRow[8] = jsonvars[index].totalCredit;
						dtable.fnAddData(newRow);
					}
						dtable.fnDraw();
				  }
	 });
});
