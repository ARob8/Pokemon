package com.gcu.data;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.gcu.model.Card;


/*
 * DAO class for Card implementation
 */

public class CardDataService implements DataAccessInterface<Card>{
	
	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject; 

	CardDataService(){
		
	}

	/*
	 * 
	 * Method to find Card by ID in database
	 */
	@Override
	public Card findById(int id) throws SQLException
	{
		String sql = "SELECT * FROM pokemonDB.Cards WHERE ID = ?";
		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql,id);
			
			if(srs.next())
			{
		
				return new Card(srs.getString("Name"),srs.getInt("Hp"),srs.getString("Stage"),srs.getString("Weakness"),srs.getString("Resistance"),srs.getString("Retreat"),srs.getInt("Rarity"),srs.getString("Abilities"),srs.getFloat("Price"),srs.getInt("Id"));
			}
			
		} catch (DataAccessException e)
		{
		
			System.out.println("Connection error");
			throw new RuntimeException(e);
		}
		return null;
	}
	
	/*
	 * method to find all cards  in database
	 * 
	 */
	public List<Card> findAll() throws SQLException{
		String sql = "SELECT * FROM pokemonDB.Cards";
		List<Card> cards = new ArrayList<Card>();
		try {
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql);
			while(srs.next())
			{
				cards.add(new Card(srs.getString("Name"),srs.getInt("Hp"),srs.getString("Stage"),srs.getString("Weakness"),srs.getString("Resistance"),srs.getString("Retreat"),srs.getInt("Rarity"),srs.getString("Abilities"),srs.getFloat("Price"),srs.getInt("Id")));
			}
			
		} catch (DataAccessException e)
		{
	
			throw new RuntimeException(e);
		}
		return cards;
	}

	/*
	 * method to add a new card in database
	 * @see com.gcu.data.DataAccessInterface#create(java.lang.Object)
	 */
	public boolean create(Card card) throws SQLException {
		String sql = "INSERT INTO pokemonDB.Cards(Name,Hp,Stage,Weakness,Resistance,Retreat,Rarity,Abilities,Price) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int rows = jdbcTemplateObject.update(sql,card.getName(),card.getHp(),card.getStage(),card.getWeakness(),card.getResistance(),card.getRetreat(),card.getRarity(),card.getAbilities(),card.getPrice());
		
		return rows == 1 ? true : false;
	}
	
	/*
	 * method to delete a card with id input in database
	 * @see com.gcu.data.DataAccessInterface#delete(int)
	 */
	
	public boolean delete(int id) throws SQLException {
		String sql = "DELETE FROM pokemonDB.Cards WHERE ID = ?";	
		
		int rows = jdbcTemplateObject.update(sql,id);
		return rows == 1 ? true : false;
	}

	/*
	 * method to update a card in database
	 * @see com.gcu.data.DataAccessInterface#update(java.lang.Object)
	 */
	public boolean update(Card card) throws SQLException {
		String sql = "UPDATE pokemonDB.Cards SET Name = ?, Hp = ?, Stage = ?, Weakness = ?, Resistance = ?, Retreat = ?, Rarity = ?, Abilities = ?, Price = ? WHERE ID = ?";

		int rows = jdbcTemplateObject.update(sql, card.getName(), card.getHp(), card.getStage(), card.getWeakness(), card.getResistance(), card.getRetreat(), card.getRarity(), card.getAbilities(), card.getPrice(), card.getId());
		
		return rows == 1 ? true : false;
	}
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
		this.jdbcTemplateObject =  new JdbcTemplate(dataSource);
	}
	
	
	@Override
	public Card findByProperties(String s1, String s2) {
		
		return null;
	}
	@Override
	public boolean findByName(String name) {
		
		return false;
	}

	

}
