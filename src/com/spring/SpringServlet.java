package com.spring;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.mortbay.log.Log;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.Entry;

import javax.jdo.Query;

import com.spring.PMF;
import com.google.appengine.labs.repackaged.org.json.JSONException;

@Controller
public class SpringServlet 
{
		private static final ServletResponse response = null;

@RequestMapping(value="/",method=RequestMethod.GET)	
public String userdefined(HttpServletRequest req, HttpServletResponse resp) throws IOException 
{
	return "login";
}
@RequestMapping(value="/checkentry",method=RequestMethod.POST)
public @ResponseBody String checkentry(HttpServletResponse response,HttpServletRequest request,HttpSession session)throws IOException, JSONException
{
	PersistenceManager  pm         = 	PMF.get().getPersistenceManager();
	Entry 		enter 			   =  	new Entry();
	String 		keyword			   =   	request.getParameter("email");
	String 		password		   =   	request.getParameter("password");
	Query 		queryUserDetails1  =	pm.newQuery(Entry.class," email == '"+keyword+"' && password == '"+password+"'");
	List<Entry> usersInfo1 		   = 	(List<Entry>)queryUserDetails1.execute();
	if(usersInfo1.size()!=0)
	{
	  	return "success";
	}
	else
	{
		return "failure";
	}
}
@RequestMapping(value="/storevalue",method=RequestMethod.GET)
public @ResponseBody String storevalue(@RequestParam(value="email",required=false)String email,
		@RequestParam(value="storevalue",required=false)String storevalue,
		@RequestParam(value="speed",required=false)String speed,
		HttpServletResponse response,HttpServletRequest request,
		HttpSession session)throws IOException, JSONException
{
	 Query 			QueryLists  			=			null;
	 List<Entry> 	listEntry 				=			null; 
	 String[] valuearray = storevalue.split("-");
	 PersistenceManager  pm         = 	PMF.get().getPersistenceManager();
	try
	 {
		
		 Entry 		enter 			   	=  	new Entry();
		 QueryLists     				= 		pm.newQuery(Entry.class,"email == '"+email+"'");
		 listEntry 						= 		(List<Entry>)QueryLists.execute();
		 System.out.println("list size ::"+listEntry.size());
		 System.out.println("speed ::"+speed);
		 if( listEntry != null && !listEntry.isEmpty() )
 		 {
			 for( Entry values:listEntry )
	   		   {
				  values.setValuestored(storevalue);
				  values.setSpeed(speed);
				  pm.currentTransaction().begin();
				  pm.makePersistent(values);
				  pm.currentTransaction().commit();
	   		   }
 		 }
	 }
	catch(Exception e)
	{
		System.out.println(e);
	}
	finally
	{
		pm.close();
	}
	System.out.println("storevalue :: "+storevalue);
	return "success";
}
@RequestMapping(value="/registeration",method=RequestMethod.POST)
public void registeration(@RequestParam(value="firstname",required=false)String name,@RequestParam(value="email",required=false)String email,@RequestParam(value="password",required=false)String password,@RequestParam(value="phonenumber",required=false)String phonenumber,@RequestParam(value="dates",required=false)String dates,HttpServletResponse response,HttpSession session)throws IOException, JSONException
{
	DateFormat dateFormat   		= 		new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	PersistenceManager  pm          = 		PMF.get().getPersistenceManager();
	try
	{
		Entry 		enter 			=  	new Entry();
		UUID uniqueKey				= 		UUID.randomUUID();
		enter.setemail(email);
		enter.setname(name);
		enter.setKey(uniqueKey.toString());
		enter.setpassword(password);
		enter.setDate(dates);;
		enter.setphonenumber(phonenumber);
		pm.currentTransaction().begin();
		pm.makePersistent(enter);
		pm.currentTransaction().commit();
	}
	catch(Exception e)
	{
		e.getStackTrace();
		System.out.println("the exception is this :: "+e);
	}
	finally
	{
		pm.close();
	}
}
@RequestMapping(value="/getvalue",method=RequestMethod.GET)
public @ResponseBody String getvalue(@RequestParam(value="email",required=false)String email,
		HttpServletResponse response,HttpServletRequest request,
		HttpSession session)throws IOException, JSONException
{
	   String 					status 	= 		null;
	   PersistenceManager 	pm 			= 		null;
	   Query 		queryUserDetails	=		null;
	   List<Entry> usersInfo			=		null;
	   
	   try
	   {
	        pm             						=      PMF.get().getPersistenceManager();
	        HashMap<String, Entry> tableEntry 	=      new HashMap<String,  Entry>();
	        queryUserDetails     				= 		pm.newQuery(Entry.class,"email == '"+email+"'");
	        usersInfo           				=      (List<Entry>) queryUserDetails.execute();
	      
	        for( Entry value:usersInfo )
	        {
	        	tableEntry.put( value.getKey().toString(), value );
	        }  
	        
	        status               				=   	  new ObjectMapper().writeValueAsString(tableEntry);
	        System.out.println("the status is this :: "+status);
	   }
	   catch(Exception e)
	   {
		      System.out.println("the error occured is this :: "+e);
	   }
	return status;
}
@RequestMapping(value="/saveoption",method=RequestMethod.GET)
public @ResponseBody String saveoption(@RequestParam(value="email",required=false)String email,
		@RequestParam(value="saveto",required=false)String saveto,
		HttpServletResponse response,HttpServletRequest request,
		HttpSession session)throws IOException, JSONException
{
	 Query 			QueryLists  			=			null;
	 List<Entry> 	listEntry 				=			null; 
	 PersistenceManager  pm         = 	PMF.get().getPersistenceManager();
	try
	 {
		
		 Entry 		enter 			   	=  	new Entry();
		 QueryLists     				= 		pm.newQuery(Entry.class,"email == '"+email+"'");
		 listEntry 						= 		(List<Entry>)QueryLists.execute();
		 System.out.println("list size ::"+listEntry.size());
		 System.out.println("saveto ::"+saveto);
		 if( listEntry != null && !listEntry.isEmpty() )
 		 {
			 for( Entry values:listEntry )
	   		   {
				  values.setResearch(saveto);
				  pm.currentTransaction().begin();
				  pm.makePersistent(values);
				  pm.currentTransaction().commit();
	   		   }
 		 }
	 }
	catch(Exception e)
	{
		System.out.println(e);
	}
	finally
	{
		pm.close();
	}
	return "success";
}


}

