<!DOCTYPE html>
<html>
  
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Move to Click Position</title>
<link rel="stylesheet" href="/css/style1.css">
 <script src="js/bootbox.min.js"></script>
<style type="text/css">
body {
    background-color: #FFF;
    margin: 30px;
    margin-top: 10px;
}
#contentContainer {
    width: 100%;
    height: 500px;
    border: 5px black solid;
    overflow: hidden;
    background-color: #F2F2F2;
    cursor: pointer;
}
#thing {
    position: relative;
    left: 50px;
    top: 50px;
    transition: left .5s ease-in, top .5s ease-in;
}
</style>
</head>
 
<body>
<div id="authenticatetrue" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       Authentication Successfull
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="authenticatetruebtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<div id="authenticatefail" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       Authentication Failed
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="authenticatefailbtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<div id="max" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       You have reached your maximum try
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="maxbtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<div id="contentContainer">
<img id="thing" src="http://www.kirupa.com/images/smiley_red.png">
	<table style="margin-left: 5%;border-spacing: 70px !important;border-collapse: inherit !important;" cellspacing="70">
			<tr>
				<td>
					<input type="radio" name="radiog_dark" id="radio1" class="css-checkbox" />
					<label for="radio1" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio2" class="css-checkbox"/>
					<label for="radio2" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio3" class="css-checkbox" />
					<label for="radio3" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio4" class="css-checkbox" />
					<label for="radio4" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio5" class="css-checkbox"/>
					<label for="radio5" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio6" class="css-checkbox" />
					<label for="radio6" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio7" class="css-checkbox"/>
					<label for="radio7" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio8" class="css-checkbox" />
					<label for="radio8" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio9" class="css-checkbox" />
					<label for="radio9" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio10" class="css-checkbox"/>
					<label for="radio10" class="css-label radGroup2"></label>
				</td>
				<td>
						<input type="radio" name="radiog_dark" id="radio29" class="css-checkbox"/>
						<label for="radio29" class="css-label radGroup2"></label>
					</td>
			</tr>
				<tr>
					<td>
						<input type="radio" name="radiog_dark" id="radio11" class="css-checkbox" />
						<label for="radio11" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio12" class="css-checkbox" />
						<label for="radio12" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio13" class="css-checkbox"/>
						<label for="radio13" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio14" class="css-checkbox" />
						<label for="radio14" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio15" class="css-checkbox" />
						<label for="radio15" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio16" class="css-checkbox"/>
						<label for="radio16" class="css-label radGroup2"></label>
					</td>
					<td>
					<input type="radio" name="radiog_dark" id="radio17" class="css-checkbox" />
					<label for="radio17" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio18" class="css-checkbox" />
					<label for="radio18" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio19" class="css-checkbox" />
					<label for="radio19" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio20" class="css-checkbox" />
					<label for="radio20" class="css-label radGroup2"></label>
				</td>
				<td>
					<input type="radio" name="radiog_dark" id="radio21" class="css-checkbox" />
					<label for="radio21" class="css-label radGroup2"></label>
				</td>
				</tr>
				<tr>
					<td>
						<input type="radio" name="radiog_dark" id="radio22" class="css-checkbox" />
						<label for="radio22" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio23" class="css-checkbox" />
						<label for="radio23" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio24" class="css-checkbox"/>
						<label for="radio24" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio25" class="css-checkbox" />
						<label for="radio25" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio26" class="css-checkbox" />
						<label for="radio26" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio27" class="css-checkbox" />
						<label for="radio27" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio28" class="css-checkbox"/>
						<label for="radio28" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio29" class="css-checkbox" />
						<label for="radio25" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio30" class="css-checkbox" />
						<label for="radio30" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio31" class="css-checkbox" />
						<label for="radio31" class="css-label radGroup2"></label>
					</td>
					<td>
						<input type="radio" name="radiog_dark" id="radio32" class="css-checkbox"/>
						<label for="radio32" class="css-label radGroup2"></label>
					</td>
				</tr>
	</table>
    
</div><br><br>
<input type="button" id="saved" value="Authenticate me" onclick="loginme()" style="margin-left: 35%; font-size: 32px;"> 
<input type="button" id="refresh" value="Refresh" onclick="refresh();" style="margin-left: 1%; font-size: 32px;"><br><br>
 <center><p style="font-size: 26px;color: rgb(81, 181, 210);font-family: initial; font-style: normal;"> Please Complete Your Mouse Dynamics Verification Step to login </p><center> 
<center><p style="
    font-size: 26px;
    color: rgb(81, 181, 210);
    font-family: initial;
    font-style: normal;
">Click at your Check Points</p><center> 
<p>
  <span>Move the mouse over the div.</span>
  <span>&nbsp;</span>
</p>
<script src="http://www.kirupa.com/prefixfree.min.js"></script>
<script src="js/cookie.js"></script>
<script>
var i=0;
var theThing = document.querySelector("#thing");
var container = document.querySelector("#contentContainer");
var pageCoords = "";
var clientCoords = "";
var storepoints = [];
var getclickvalue = "";
var email = cookies.getRegistrationUrlCookie('cookie');
container.addEventListener("click", getClickPosition, false);
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
						getclickvalue = jsonpars[index].valuestored;	
					}
// 					getclickvalue =  getclickvalue.split('-');
					console.log("dsfsd"+data);
			  }
});
function refresh()
{
	location.reload();
}
function getClickPosition(e) {
    var parentPosition = getPosition(e.currentTarget);
    var xPosition = e.clientX - parentPosition.x - (theThing.clientWidth / 2);
    var yPosition = e.clientY - parentPosition.y - (theThing.clientHeight / 2);
     
    theThing.style.left = xPosition + "px";
    theThing.style.top = yPosition + "px";
    console.log(xPosition);
    console.log(yPosition);
    if(i!=8)
    {
    	i=i+1;
    	if(storepoints == null || storepoints == '')
    	{
    		storepoints = pageCoords +'-';
    	}
    	else if(i==8)
    	{
    		storepoints = storepoints + pageCoords;
    	}
    	else
    	{
    		storepoints = storepoints + pageCoords +'-';
    	}
//         alert("Click "+i+":: Co-Ordinates Measured");	
        console.log(" var xPosition :: "+pageCoords);
        console.log(" var yPosition :: "+clientCoords);
    }
    else
    { 
    	console.log(storepoints);
    	$("#maxbtn").on("click", function(e) {
			console.log("button pressed");   // just as an example...
			$("#max").modal('hide'); 
		});
    	$("#max").modal({                    // wire up the actual modal functionality and show the dialog
			"backdrop"  : "static",
			"keyboard"  : true,
			"show"      : true                     // ensure the modal is shown immediately
		});
    }
//     alert(theThing.style.left);
//     alert(theThing.style.top);
}
function loginme()
{
		console.log(getclickvalue);
		console.log(storepoints);
	 	storepoints = storepoints.split('-');
	   	console.log("sd"+storepoints);
	   	console.log(storepoints);
	   	storepoints = storepoints[0]+'-'+storepoints[2]+'-'+storepoints[4]+'-'+storepoints[6];
	   	console.log("sd"+storepoints);
	   	storepoints = storepoints.split('-');
	   	console.log("dsfs"+storepoints);
	   	var one = storepoints[0];
	   	var two = storepoints[1];
	   	var three = storepoints[2];
	   	var four = storepoints[3];
	   	one = one.split(',');
	   	one = one[0].replace("(","");
		two = two.split(',');
	   	two = two[0].replace("(","");
		three = three.split(',');
	   	three = three[0].replace("(","");
		four = four.split(',');
	   	four = four[0].replace("(","");
	   	var finalvalue  = one+' - '+two+' - '+three+' - '+four;
	   	console.log("finalvalue :: "+finalvalue);
	   	process();
	   	console.log("Sdfds dsfsd :::"+getclickvalue);
	if(getclickvalue === finalvalue)
	{
		$("#authenticatetruebtn").on("click", function(e) {
			console.log("button pressed");   // just as an example...
			$("#authenticatetrue").modal('hide'); 
			window.location.href="/welcome.jsp"
		});
		$("#authenticatetrue").modal({                    // wire up the actual modal functionality and show the dialog
			"backdrop"  : "static",
			"keyboard"  : true,
			"show"      : true                     // ensure the modal is shown immediately
		});
	}
	else
	{
		$("#authenticatefailbtn").on("click", function(e) {
			console.log("button pressed");   // just as an example...
			$("#authenticatefail").modal('hide'); 
			location.reload();
		});
		$("#authenticatefail").modal({                    // wire up the actual modal functionality and show the dialog
			"backdrop"  : "static",
			"keyboard"  : true,
			"show"      : true                     // ensure the modal is shown immediately
		});
	}
}
 function process()
 {
	 	getclickvalue = getclickvalue.split('-');
	   	console.log("getclickvalue"+getclickvalue);
	   	console.log(getclickvalue);
	   	getclickvalue = getclickvalue[0]+'-'+getclickvalue[1]+'-'+getclickvalue[2]+'-'+getclickvalue[3];
	   	console.log("sd"+getclickvalue);
	   	getclickvalue = getclickvalue.split('-');
	   	console.log("getclickvaluesds"+getclickvalue);
	   	var one = getclickvalue[0];
	   	var two = getclickvalue[1];
	   	var three = getclickvalue[2];
	   	var four = getclickvalue[3];
	   	one = one.split(',');
	   	one = one[0].replace("(","");
		two = two.split(',');
	   	two = two[0].replace("(","");
		three = three.split(',');
	   	three = three[0].replace("(","");
		four = four.split(',');
	   	four = four[0].replace("(","");
	   	getclickvalue  = one+' - '+two+' - '+three+' - '+four;
	   	console.log("finalvalue getclickvalue :: "+getclickvalue);
 }
function getPosition(element) {
    var xPosition = 0;
    var yPosition = 0;
      
    while (element) {
        xPosition += (element.offsetLeft - element.scrollLeft + element.clientLeft);
        yPosition += (element.offsetTop - element.scrollTop + element.clientTop);
        element = element.offsetParent;
    }
    return { x: xPosition, y: yPosition };
}
$( "div" ).mousemove(function( event ){
	   pageCoords = "( " + event.pageX + ", " + event.pageY + " )";
	   clientCoords = "( " + event.clientX + ", " + event.clientY + " )";
	  $( "span:first" ).text( "( event.pageX, event.pageY ) : " + pageCoords );
	  $( "span:last" ).text( "( event.clientX, event.clientY ) : " + clientCoords );
});
</script>
<script src="js/bootbox.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        
</body>
</html>