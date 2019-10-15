package com.gcu.model;

import javax.validation.constraints.Max;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.context.annotation.Scope;
/*
 * This is User Model class, where declare, get and set attribute for user in application  
 */ 
@Scope("session")
public class User {

	@NotNull(message="First name cannot be null.")
	@Size(min=2,max=30, message="First name must be between 2 and 30 characters.")
	private String firstName;
	
	@NotNull(message="Last name cannot be null.")
	@Size(min=2,max=30, message="Last name must be between 2 and 30 characters.")
	private String lastName;
	
	@NotNull(message="User name cannot be null.")
	@Size(min=2,max=30, message="User name must be between 2 and 30 characters.")
	private String userName;
	
	@NotNull(message="Password cannot be null.")
	@Size(min=6,max=30, message="Password must be between 6 and 30 characters.")
	private String Password;
	
	@NotNull(message="Email cannot be null.")
	@Size(min=2,max=30, message="Email must be between 2 and 30 characters.")
	private String Email;
	
	@NotNull(message="Gender cannot be Null")
	@Min(value = 0, message = "Invalid value for gender")
	@Max(value = 1, message = "Invalid value for gender")
	private int gender;
	
	public User() {
		
	}
	public User(String firstName, String lastName, String userName, String Password, String Email, int gender) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.Password = Password;		
		this.Email = Email;
		this.gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
}