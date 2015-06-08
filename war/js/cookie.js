var cookies = 
{
	getRegistrationUrlCookie	:	function()
	{
		var i,x,y,ARRcookies	=		document.cookie.split(";");
		content						= 		"cookie";
		for (i=0;i<ARRcookies.length;i++)
		{
		  x			=		ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
		  y		=		ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
		  x			=		x.replace(/^\s+|\s+$/g,"");
		  if (x==content)
		  {
			  return unescape(y);
		  }
		}
	},
	setRegistrationUrlCookie	:	function(cook)
	{
		document.cookie="cookie" + "=" + cook;
	}	
};

