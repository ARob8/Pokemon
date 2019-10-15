package com.gcu.business;

import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.model.Card;

import com.gcu.data.DataAccessInterface;

/*
 * Business logic class for Card implementation 
 */
public class CardBusinessService implements  CardBusinessInterface{
	private List<Card> cards;	

	@Autowired
	DataAccessInterface<Card> dao;
	
	public CardBusinessService  () {
		this.cards = new ArrayList<Card>();
	}
	public CardBusinessService (List<Card> cards) {
		this.cards = cards;
	}
	
	/*
	 * @see com.gcu.business.CardBusinessInterface#addCard(com.gcu.model.Card)
	 * Business function call addCard from DAO to perform functional add Pokemon Card 
	 */

	public boolean createCard(Card card) throws SQLException 
	{
				return dao.create(card);
		
	}	
	
	 /*
	  * @see com.gcu.business.CardBusinessInterface#getAllCards()
	  * Business function call findAll from DAO to find All Pokemon Card 
	  */

	public List<Card> getAllCards() {
	
		try {
			return dao.findAll();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return cards;
	}
	/*
	 * Business function call DAO service to delete a Card in Database
	 * @see com.gcu.business.CardBusinessInterface#delete(java.lang.String)
	 */
	
	@Override
	public boolean delete(int id) {
		
		try {
			return dao.delete(id);
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	
	
	/*
	 * Business business function call DAO service find a Card by ID in database
	 * @see com.gcu.business.CardBusinessInterface#findCardById(int)
	 */
	@Override
	public Card findCardById(int id) {
	
		try {
			return dao.findById(id);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	/*
	 * This Business function call DAO service to update Card information in database
	 * @see com.gcu.business.CardBusinessInterface#update(com.gcu.model.Card)
	 */
	@Override
	public boolean update(Card card) {	
		try {
			return dao.update(card);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}
	
	
}
