package com.gcu.business;

import java.sql.SQLException;
import com.gcu.model.User;

public interface UserBusinessInterface {
		
	public User login(String userName, String Password) ;
	public boolean createUser(User user) throws SQLException;	
	public boolean findByName(String userName);

}
