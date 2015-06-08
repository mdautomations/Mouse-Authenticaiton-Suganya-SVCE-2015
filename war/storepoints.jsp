<!DOCTYPE html>
<html>
  
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="http://www.loganfranken.com/projects/cursometer/script/jquery.cursometer.1.0.0.js"></script>
<script src="js/cookie.js"></script>
<link rel="stylesheet" href="/css/style1.css">
<title>Move to Click Position</title>
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
<div id="contentContainer" style="background-color: #4B5E90;">
    <img id="thing" src="http://www.kirupa.com/images/smiley_red.png">
	<table style="margin-left: 1%;border-spacing: 70px !important;border-collapse: inherit !important;" cellspacing="70">
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
<input type="button" id="saved" value="Save" onclick="save()" style="margin-left: 46%; font-size: 32px;"> 
<input type="button" id="refresh" value="Refresh" onclick="refresh();" style="margin-left: 1%; font-size: 32px;"><br><br>
<div id="speedometer" style="
    margin-left: 42%;
    font-size: 25px;
    color: rgb(4, 10, 16);
    font-family: monospace;
"></div>
<center><p style="font-size: 26px;color: rgb(81, 181, 210);font-family: initial; font-style: normal;"> Please save your pattern for authentication</p><center> 
<center><p style="
    font-size: 26px;
    color: rgb(81, 181, 210);
    font-family: initial;
    font-style: normal;
">Click at your 4 Check Points</p>
<center>
<center><p style="
    font-size: 26px;
    color: rgb(81, 181, 210);
    font-family: initial;
    font-style: normal;
">The speed of the moment also is monitored</p>
<center> 
 
<p>
  <span>Move the mouse over the div.</span>
  <span>&nbsp;</span>
</p>
<script src="http://www.kirupa.com/prefixfree.min.js"></script>
<script>
var i=0;
var theThing = document.querySelector("#thing");
var container = document.querySelector("#contentContainer");
var pageCoords = "";
var clientCoords = "";
var storepoints = [];
var email = cookies.getRegistrationUrlCookie('cookie');
var speed = $('#speedometer').html();
container.addEventListener("click", getClickPosition, false);
container.removeEventListener("click", myFunction);
function myFunction() {
    console.log("none");
}
function refresh()
{
	location.reload();
}
function getClickPosition(e) {
	console.error("cleclid");
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
//      alert("Click "+i+":: Co-Ordinates Measured");	
        console.log(" var xPosition :: "+pageCoords);
        console.log(" var yPosition :: "+clientCoords);
    }
    else
    { 
    	console.log(storepoints);
    	alert("Your Maximum try limit Reached. Please contact the Administrator.");
    }
    
//     alert(theThing.style.left);
//     alert(theThing.style.top);
}
var $speedometer = $('#speedometer');

$('#contentContainer').cursometer({
    onUpdateSpeed: function (speed) {
        $speedometer.text(speed);
    },
    updateSpeedRate: 20
});

$("#contentContainerr").mouseover(function () {
    if (this.value > 5) {
        console.log("asdasd");
    } else {
        console.log("bbb");
    }
});
function save()
{
   if(i<8)
   {
		alert("Click Point Not properly measured. Please Make sure you have saved 4 points");   
   }
   else if(i==8)
   {
	   console.log("speed :: "+speed);
	   storepoints = storepoints.split('-');
   	console.log("sd"+storepoints);
   	console.log(storepoints);
   	storepoints = storepoints[0]+'-'+storepoints[2]+'-'+storepoints[4]+'-'+storepoints[6];
   	console.log("sd"+storepoints);
	   $.ajax({
			type	: 'GET', 
			url		: '/storevalue' ,
			data	: {email:email,storevalue:storepoints,speed:$('#speedometer').html()},
			success	: function(data)
					  {
							console.log("dsfsd"+data);
							alert("Your pattern successfully saved. For security reasons, you are redirected to login again.")
							window.location.href="/login.jsp";
					  }
	   });
   }
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
$( "div" ).mousemove(function( event ) {
	   pageCoords = "( " + event.pageX + ", " + event.pageY + " )";
	   clientCoords = "( " + event.clientX + ", " + event.clientY + " )";
	  $( "span:first" ).text( "( event.pageX, event.pageY ) : " + pageCoords );
	  $( "span:last" ).text( "( event.clientX, event.clientY ) : " + clientCoords );
	});
</script>
</body>
</html>