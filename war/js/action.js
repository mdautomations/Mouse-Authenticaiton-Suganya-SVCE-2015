var getresearch="";
var selectedoption="";
$(document).ready(function()
{
	fetch();
	$( "#go" ).click(function() {
		  $('#signupbox').show();
		  $('#signinbox').hide();
		});
	$( "#goin" ).click(function() {
		  $('#signupbox').hide();
		  $('#signinbox').show();
		})
	$( "#signin" ).click(function() {
		  login();
		});
	$( "#signup" ).click(function() {
		 registerr();
		});
	$('#google').click(function(){
		google("google");
	});
	$('#ieee').click(function(){
		ieee("ieee");
	});
	$('#stack').click(function(){
		stack("stack");
	});
	$('#wiki').click(function(){
		wiki("wiki");
	});
	
});
function fetch()
{
	var email = cookies.getRegistrationUrlCookie('cookie');
	
	$.ajax({
		type	: 'GET', 
		url		: '/getvalue' ,
		data	: {email:email},
		success	: function(data)
				  {
						var jsonpars = JSON.parse(data);
						console.log(jsonpars);
						for(var index in jsonpars)
						{
							getresearch = jsonpars[index].research;	
						}
						console.log("dsfsd"+data);
						console.log(jsonpars);
				  }
	});
}
function google(chosen)
{
	$("#choosetruebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosetrue").modal('hide'); 
	});
	$("#choosefalsebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosefalse").modal('hide'); 
		window.location.href="/login.jsp";
	});
	if( getresearch!=null && getresearch.length>0 && getresearch!=undefined)
	{
		if(getresearch == chosen)
		{
			$("#choosetrue").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
		else
		{
			$("#choosefalse").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
	}
	else
	{
		selectedoption="google";
		saveoption(selectedoption);
	}
}
function ieee(chosen)
{
	$("#choosetruebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosetrue").modal('hide'); 
	});
	$("#choosefalsebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosefalse").modal('hide'); 
		window.location.href="/login.jsp";
	});
	if( getresearch!=null && getresearch.length>0 && getresearch!=undefined)
	{
		if(getresearch == chosen)
		{
			$("#choosetrue").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
		else
		{
			$("#choosefalse").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
	}
	else
	{
		selectedoption="ieee";
		saveoption(selectedoption);
	}
}
function stack(chosen)
{
	$("#choosetruebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosetrue").modal('hide'); 
	});
	$("#choosefalsebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosefalse").modal('hide'); 
		window.location.href="/login.jsp";
	});
	if( getresearch!=null && getresearch.length>0 && getresearch!=undefined)
	{
		if(getresearch == chosen)
		{
			$("#choosetrue").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
		else
		{
			$("#choosefalse").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
	}
	else
	{
		selectedoption="stack";
		saveoption(selectedoption);
	}
}
function wiki(chosen)
{
	$("#choosetruebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosetrue").modal('hide'); 
	});
	$("#choosefalsebtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#choosefalse").modal('hide'); 
		window.location.href="/login.jsp";
	});
	if( getresearch!=null && getresearch.length>0 && getresearch!=undefined)
	{
		if(getresearch == chosen)
		{
			$("#choosetrue").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
		else
		{
			$("#choosefalse").modal({                    // wire up the actual modal functionality and show the dialog
				"backdrop"  : "static",
				"keyboard"  : true,
				"show"      : true                     // ensure the modal is shown immediately
			});
		}
	}
	else
	{
		selectedoption="wiki";
		saveoption(selectedoption);
	}
}
function saveoption(saveto)
{
	var email = cookies.getRegistrationUrlCookie('cookie');
	$("#saveoptionbtn").on("click", function(e) {
		console.log("button pressed");   // just as an example...
		$("#saveoption").modal('hide'); 
		window.location.href="/login.jsp";
	});
	$.ajax({
		type	: 'GET', 
		url		: '/saveoption' ,
		data	: {email:email,saveto:saveto},
		success	: function(data)
				  {
						$("#saveoption").modal({                    // wire up the actual modal functionality and show the dialog
							"backdrop"  : "static",
							"keyboard"  : true,
							"show"      : true                     // ensure the modal is shown immediately
						});
				  }
	});
}
function login()
{
	var sessionName	= $('#username').val();
	var password 	= $('#Password').val();
	if(sessionName==null || sessionName=='' || password==null || password== '')
	{
		$('#username').css('background-color','rgb(223, 151, 151)');
		$('#username').val("Please fill your details");
	}
	else
		{
			var urltocals       = '/checkentry?email='+encodeURIComponent(sessionName)+'&password='+encodeURIComponent(password);
			$('#spinner').show();
			$.ajax({
					type	: 'POST', 
					url		: urltocals ,
					data	: '',
					success	: function(data)
							  {
									$("#loginmsgtruebtn").on("click", function(e) {
										console.log("button pressed");   // just as an example...
										$("#loginmsgtrue").modal('hide'); 
										window.location.href="/index.jsp";
									});
									$("#loginmsgfalsebtn").on("click", function(e) {
										console.log("button pressed");   // just as an example...
										$("#loginmsgfail").modal('hide'); 
										location.reload();
									});
									if(data.match("success"))
									{
										$("#loginmsgtrue").modal({                    // wire up the actual modal functionality and show the dialog
											"backdrop"  : "static",
											"keyboard"  : true,
											"show"      : true                     // ensure the modal is shown immediately
										});
										cookies.setRegistrationUrlCookie(sessionName);
									}
									else
										{
											$("#loginmsgfail").modal({                    // wire up the actual modal functionality and show the dialog
												"backdrop"  : "static",
												"keyboard"  : true,
												"show"      : true                     // ensure the modal is shown immediately
											});
										}
							  }
		 			});
		}
}
function registerr()
{
		 var firstname 		=	 $('#firstname').val();
		 var email 			=	 $('#email').val();
		 var phonenumber 	=	 $('#phonenumber').val();
		 var password		= 	 $('#password').val();
	     var reg_email		=	/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		 var regnum			=	/^[0-9-+]+$/;
		 var dates				= new Date();
		 if((firstname=="") || (email=="") || (phonenumber=="") || (password==""))
		  {
			 if(firstname==null || firstname=='')
				{
					$('#firstname').css('background-color','rgb(176, 199, 221)');
	       			$('#firstname').css('color','black');
	       			$('#firstname').val("Invalid Name");
				}
			 if(email==null || email=='')
				{
					$('#email').css('background-color','rgb(176, 199, 221)');
	       			$('#email').css('color','black');
	       			$('#email').val("Invalid Email");
				}
			 if(phonenumber==null || phonenumber=='')
				{
					$('#phonenumber').css('background-color','rgb(176, 199, 221)');
	       			$('#phonenumber').css('color','black');
	       			$('#phonenumber').val("Invalid Phonenumber");
				}
			 if(password==null || password=='')
				{
					$('#password').css('background-color','rgb(176, 199, 221)');
	       			$('#password').css('color','black');
	       			$('#password').val("Invalid password");
				}
		  }
		 	 else
		 	 	{
		 		 	$.ajax({
								type	: 'POST', 
								url		: '/registeration' ,
								async	: true,
								data	: {firstname:firstname,email:email,phonenumber:phonenumber,password:password,dates:dates},
								success	: function(data)
										  {
												if(String(data).match("Failure"))
											    {
														$('#email').val("");
														$("#email").attr("placeholder","User Already Exists");
														$('#email').css({"background-color":"rgb(150, 98, 98)"});
														$('#password').val("");
														$('#firstname').val("");
														
												}
												else
												{
														alert("Registration Successfull, Your Records Saved");
														cookies.setRegistrationUrlCookie(email);
														window.location.href="/storepoints.jsp";
												}
										  }
		 		 			});
		 	 		}
} 
