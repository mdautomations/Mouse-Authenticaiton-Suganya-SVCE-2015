var totalscore = 0;
var finalcourse = " ";
var creditvalue;
var clickrate = 0;

$(document).ready(function()
{
	var email = cookies.getRegistrationUrlCookie();
	$('#courses').click(function()
	{
		finalcourse = " ";
		creditvalue = $('#credit').text();
		creditvalue = creditvalue.split(" ");
		creditvalue  = creditvalue[creditvalue.length-1];
		console.log("credit value is this :: "+creditvalue);
		$('#selectedvalue label').each(function()
		{
			var toapppend = $(this).text();
			if(toapppend.trim().length>0)
			{
				console.info("finalcourse :: "+finalcourse);
				if(finalcourse!= " ")
				{
					    console.info("finalcourses ::"+finalcourse);
						finalcourse  = finalcourse.trim()+","+toapppend.trim();
				}
				else
				{
						finalcourse  = toapppend.trim();
				}
			}
	   });
	   $.ajax({
			type	: 'POST', 
			url		: '/setprofile' ,
			async	: false,
			data	: {email:email,finalcourse:finalcourse,creditvalue:creditvalue},
			success	: function(data)
					  {
						
									alert("Registration Successfull, Your Records Saved");
					  }
			});
			console.log(finalcourse.trim());
	});
	
	$('#subscription input').change(function(event){
		
	    var c = this.checked ? 'true' : 'false';
	    console.log("comse is there");
	    
	    if(c== "true")
	    {
	    	console.log("dlfms is there");
	    	if(parseInt(totalscore)<=50)
	    	{
				    	var	hello 			= 		$(this).parent().text();
				    	var hellos 			= 		$(this).next().text();
				    		hellos 			= 		parseInt(hellos);
				    	console.info("hellos ::"+hellos);
				    	totalscore 			= 		parseInt(totalscore) + parseInt(hellos);
				    	clickrate			=		parseInt(clickrate) + 1;
				    	var build			= 		'<label>'+hello+'<label><br/>';
				    	console.log("hello ::"+hello);
				    	$('#credit').html("Total Credit Obtained <b style=\"font-size: 25px;\">"+totalscore+"</b>");
				    	$('#selectedvalue').append(build);
				    	console.log("clickrate::"+clickrate);
	    	}
	    	else
	    	{
	    				alert("Your Maximum Credit Reached");
	    				$('input').each(function()
	    				{
	    					if($(this).is(':checked'))
	    					{
	    						console.log("Do Nothing");
	    					}
	    					else
	    					{
	    						this.disabled = "true";
	    					}
	    				});
	    				clickrate			=		parseInt(clickrate) + 1;
	    	 }
	    }
	    else
	    {
	    	var 		hello 			= 		$(this).parent().text();
	    	var 		hellos 			= 		$(this).next().text();
	    				hellos 			= 		parseInt(hellos);
	    				totalscore	    = 		parseInt(totalscore) - parseInt(hellos);
	    				clickrate			=		parseInt(clickrate) - 1;
	    	$('#credit').html("Total Credit Obtained <b style=\"font-size: 25px;\">"+totalscore+"</b>");
	    	$('#selectedvalue').html(" ");
	    	$('input').each(function()
	    	{
					if($(this).is(':checked'))
					{
						$(this).removeAttr('disabled');
						var 		hello 	= 		$(this).parent().text();
						var 		build	= 		'<label>'+hello+'<label><br/>';
						$('#selectedvalue').append(build);
					}
					else
					{
						$(this).removeAttr('disabled');
					}	
			});
	    	console.log("clickrate::"+clickrate);
	    }
	});
});

