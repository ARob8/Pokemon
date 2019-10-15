package com.gcu.data;

import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.gcu.model.User;

/*
 * DAO class for User implementation
 */
public class UserDataService implements DataAccessInterface<User> {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;

	public UserDataService() {

	}

	/*
	 * method to create a new user in database
	 * @see com.gcu.data.DataAccessInterface#create(java.lang.Object)
	 */
	public boolean create(User User)throws SQLException {
		String sql = "INSERT INTO pokemonDB.Users(firstName,lastName,userName,Password,Email,gender) VALUES(?, ?, ?, ?, ?, ?)";
		try {
			int rows = jdbcTemplateObject.update(sql, User.getFirstName(), User.getLastName(), User.getUserName(),
					User.getPassword(), User.getEmail(), User.getGender());
			if(rows==1) System.out.println("Ok"); else System.out.println("error");

			return rows == 1 ? true : false;
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return false;

	}

	/*
	 * method to check a user valiid in database with given username and password
	 * @see com.gcu.data.DataAccessInterface#findByProperties(java.lang.String, java.lang.String)
	 */

	@Override
	public User findByProperties(String Username, String Password) throws SQLException{
		String sql = "SELECT * FROM pokemonDB.Users WHERE USERNAME = ? AND PASSWORD = ?";
		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql, Username, Password);
			if (srs.next()) {
				return new User(srs.getString("firstName"), srs.getString("lastName"), srs.getString("userName"),
						srs.getString("Password"), srs.getString("Email"), srs.getInt("gender"));
			}

		} catch (DataAccessException e) {
			System.out.println("Connection error");
			
			throw new RuntimeException(e);
		}

		return null;
	}


	/*
	 * method to find a username is exist in database
	 * @see com.gcu.data.DataAccessInterface#findByName(java.lang.String)
	 */
	@Override
	public boolean findByName(String name) throws SQLException{
		
		String sql = "SELECT * FROM pokemonDB.Users WHERE USERNAME = ?";
		

		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql, name);
			if (srs.next()) {
				return true;
			}

		} catch (DataAccessException e) {

		
			System.out.println("connection error");
			throw new RuntimeException(e);
		}
		return false;
	}
	
	@Override
	public User findById(int id) {
	
		return null;
	}
	
	@Override
	public boolean update(User t) {
		
		return false;
	}

	@Override
	public boolean delete(int id) {
	
		return false;
	}
	
	@Override
	public List<User> findAll() {

		return null;
	}

	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

}
