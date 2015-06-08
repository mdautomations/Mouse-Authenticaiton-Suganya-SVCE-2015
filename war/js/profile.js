var 	totalscore 		= 		0;
var 	finalcourse 		= 		" ";
var 	email;
var   degree;
var   greatness;
var   name;
var   inlineRadio1;
var 	referal;
var 	department;
var 	yop;
var 	goal;

$(document).ready(function()
{
	 	email 				= 				cookies.getRegistrationUrlCookie();
	$('.logins').html(email);
	$( "#goclick" ).click(function() 
    {
		 email 			   	= 				cookies.getRegistrationUrlCookie();
		 degree 		   	= 				$('#degree').val();
		 greatness      	= 				$('#greatness').val();
		 name 		   	= 				$('#name').val();
		 inlineRadio1 	=				 $('input:radio[name=inlineRadioOptions]:checked').val();
		$('.logins').html(email);
		
		if(inlineRadio1=="option1")
		{
				inlineRadio1 = "Male";
		}
		else 
		{
				inlineRadio1 = "Female"
		}
		
		 	referal					=		$('#referal').val();
		 	department		=		$('#department').val();
		 	yop 						= 		$('#yop').val();
		 	goal 					= 		$('#henry').find('button').attr('title');
			console.log("dfs : :"+ degree );
			console.log("dfs : :"+ greatness );
			console.log("dfs : :"+ inlineRadio1 );
			console.log("dfs : :"+  referal);
			console.log("dfs : :"+ department );
			console.log("dfs : :"+yop  );
			console.log("dfs : :"+ goal );
		
		$.ajax
		({
					type	: 'POST', 
					url		: '/profile' ,
					async	: false,
					data	: {email:email,name:name,degree:degree,greatness:greatness,inlineRadio1:inlineRadio1,referal:referal,department:department,yop:yop,goal:goal},
					success	: function(data)
					{
									alert("Registration Successfull, Your Records Saved");
					}
		});
					$.ajax
					({
							type	: 'POST', 
							url		: '/subjects' ,
							async	: false,
							data	: {goal:goal},
							success	: function(data)
							{
									window.location.href="/courses.jsp";
							}
					});
		});
});