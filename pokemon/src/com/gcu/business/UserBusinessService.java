package com.gcu.business;

import java.sql.SQLException;
import java.util.ArrayList;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.User;


public class UserBusinessService implements UserBusinessInterface{
	private List<User> users;	

	@Autowired
	DataAccessInterface<User> dao;
	
	public UserBusinessService () {
		this.users = new ArrayList<User>();
	}
	public UserBusinessService (List<User> users) {
		this.users = users;
	}

	/*
	 * Business Method call  DAO to save a new user
	 * @see com.gcu.business.UserBusinessInterface#saveUser(com.gcu.model.User)
	 */
	
	public User findById(int id) {
		// TODO Auto-generated method stub
		try {
			return  dao.findById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/*
	 * Business method to call DAO service to create a new user
	 * @see com.gcu.business.UserBusinessInterface#createUser(com.gcu.model.User)
	 */
	public boolean createUser(User user) throws SQLException
	{
			return dao.create(user);
		
	}	
	
	/*
	 * Business method call DAO service to check by username and password to login
	 * @see com.gcu.business.UserBusinessInterface#login(java.lang.String, java.lang.String)
	 */
	@Override
	public User login(String userName, String Password) {
		// TODO Auto-generated method stub
		try {
			return  (User) dao.findByProperties(userName, Password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


/*
 * Business method call DAO servicec to find a username is exist in database or not
 * @see com.gcu.business.UserBusinessInterface#findByName(java.lang.String)
 */
	@Override
	public boolean findByName(String userName) {
		// TODO Auto-generated method stub
		try {
			return dao.findByName(userName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	


}
