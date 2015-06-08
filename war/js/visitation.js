var totalscore = 0;
var finalcourse = " ";
var clicks ;
var visitrate ;

$(document).ready(function()
{
	var email = cookies.getRegistrationUrlCookie();
	 $.ajax({
		         type: 'POST',
		         url: '/visitationjs',
		         data : {email:email},
		         async : true,
		         success: function(data)
      			 {
		        	 jsonvars				=	JSON.parse(data);
		        	 console.log("ui");
		        	 console.log(jsonvars);
		        	 clicks 	= jsonvars["syllabus"];
		        	 visitrate  = jsonvars["visit"];
		        	 pathrate	= jsonvars["pathvisit"];
		        	 priority	= jsonvars["maxentry"];
		        	 
		        	 for(index in clicks)
		        	 {
		        		 console.log("cliecks :: "+index)
		        		 console.log("cliecks :: "+clicks[index]);
		        	 }
		        	 for(index in visitrate)
		        	 {
		        		 console.log("visitrate :: "+index)
		        		 console.log("visitrate :: "+visitrate[index]);
		        	 }
		        	 for(index in pathrate)
		        	 {
		        		 console.log("visitrate :: "+index)
		        		 console.log("visitrate :: "+pathrate[index]);
		        	 }
		        	 for(index in priority)
		        	 {
		        		 console.log("visitrate :: "+index)
		        		 console.log("visitrate :: "+priority[index]);
		        	 }
		        		 
		//=======================================================================
		        	 dtable = $('#datastables').dataTable({
	 					"bDestroy" : true,
	 					"aoColumns" : [{
	 						"sTitle" : "Subject",
	 						"sWidth" : "75%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Visitation Rate",
	 						"sWidth" : "25%",
	 						"sClass" : "center"
	 					}]
	 				});
	 				dtable.fnClearTable();	
	 				var newRow = [];
					for(index in visitrate)
					{
						newRow[0] = index;
						newRow[1] = visitrate[index];
						dtable.fnAddData(newRow);
					}
					dtable.fnDraw();
		//=======================================================================
					
					dtables = $('#subjectpath').dataTable({
		 					"bDestroy" : true,
		 					"aoColumns" : [{
		 						"sTitle" : "Student",
		 						"sWidth" : "25%",
		 						"sClass" : "center"
		 					},{
		 						"sTitle" : "Subject Path",
		 						"sWidth" : "75%",
		 						"sClass" : "center"
		 					}]
		 				});
					dtables.fnClearTable();		
					var newRow = [];
					for(index in clicks)
					{
						if(clicks[index]!=null && clicks[index]!='null')
						{
							newRow[0] = index;
							var path = "";
							var splitedsubj = clicks[index].split(",");
							for(var indexes=0;indexes<splitedsubj.length;indexes++)
							{
									path = path+""+splitedsubj[indexes];
									if(indexes!=splitedsubj.length-1)
									{
										path = path+" -> ";	
									}
							}
							newRow[1] = path;
							dtables.fnAddData(newRow);
						}
					}
					dtables.fnDraw();
					
		//=======================================================================
					
					dtablevisit = $('#visitpath').dataTable({
	 					"bDestroy" : true,
	 					"aoColumns" : [{
	 						"sTitle" : "Path",
	 						"sWidth" : "75%",
	 						"sClass" : "center"
	 					},{
	 						"sTitle" : "Path Visitation Rate",
	 						"sWidth" : "25%",
	 						"sClass" : "center"
	 					}]
	 				});
					dtablevisit.fnClearTable();		
					var newRow = [];
					for(index in pathrate)
					{
						if(pathrate[index]!=null && pathrate[index]!='null')
						{
							var path = "";
							var splitedsubj = pathrate[index].split(",");
							for(var indexes=0;indexes<splitedsubj.length;indexes++)
							{
									path = path+""+splitedsubj[indexes];
									if(indexes!=splitedsubj.length-1)
									{
										path = path+" -> ";										
									}
							}
							newRow[0] = path;
							var clickpath = index.split("##");
							newRow[1] = clickpath[0];
							dtablevisit.fnAddData(newRow);
						}
					}
					dtablevisit.fnDraw();
					 //=======================================================================
					 dtablemax = $('#finalpredict').dataTable({
		 					"bDestroy" : true,
		 					"aoColumns" : [{
		 						"sTitle" : "Subject",
		 						"sWidth" : "75%",
		 						"sClass" : "center"
		 					},{
		 						"sTitle" : "Priority",
		 						"sWidth" : "25%",
		 						"sClass" : "center"
		 					}]
		 				});
					 dtablemax.fnClearTable();	
		 				var newRow = [];
						for(index in priority)
						{
							newRow[0] = index;
							newRow[1] = priority[index];
							dtablemax.fnAddData(newRow);
						}
						dtablemax.fnDraw();
      			 }
		        	 
			 });	
});
