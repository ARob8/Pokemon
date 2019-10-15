package com.gcu.business;

import java.sql.SQLException;
import java.util.List;

import com.gcu.model.Card;

public interface CardBusinessInterface {
	public List<Card> getAllCards() ;
	public Card findCardById(int id) throws SQLException;
	public boolean createCard (Card card) throws SQLException ;	
	public boolean delete(int id);
	public boolean update(Card card);
}
