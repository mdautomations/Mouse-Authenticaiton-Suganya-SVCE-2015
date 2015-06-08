package com.spring;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Entry{	

		private static final long serialVersionUID = 1L;
		@PrimaryKey
	 	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	 	private String key;	
		@Persistent	 
		private String email;
		@Persistent	 
		private String name;	
		@Persistent	 
		private String password;
		@Persistent	 
		private String valuestored;
		@Persistent	 
		private String speed;
		@Persistent	 
		private String research;
	
		
	    public String getResearch() {
			return research;
		}
		public void setResearch(String research) {
			this.research = research;
		}
		@Persistent	 
	    private String phonenumber;	   
		   
		@Persistent
		private String date;
		
		public String getname() {
			return name;
		}
		public void setname(String name) {
			this.name = name;
		}
		
		public String getemail() {
			return email;
		}
		public void setemail(String email) {
			this.email = email;
		}
		public String getpassword() {
			return password;
		}
		public void setpassword(String password) {
			this.password = password;
		}
		public String getphonenumber() {
			return phonenumber;
		}
		public void setphonenumber(String phonenumber) {
			this.phonenumber = phonenumber;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		
		public String getValuestored() {
			return valuestored;
		}
		public void setValuestored(String valuestored) {
			this.valuestored = valuestored;
		}
		public String getSpeed() {
			return speed;
		}
		public void setSpeed(String speed) {
			this.speed = speed;
		}
		public String getKey() {
			return key;
			}
		public void setKey(String key) {
			this.key = key;
		}
	}

