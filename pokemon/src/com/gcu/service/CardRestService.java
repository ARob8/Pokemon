package com.gcu.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gcu.business.CardBusinessInterface;
import com.gcu.model.Card;

/*
 * This class to get API and return JSON string of Pokemon Cards
 */
@RestController
@RequestMapping("/service")
public class CardRestService{
	@Autowired
	CardBusinessInterface service;
	
	
	/*
	 * Method to get API of all cards
	 */
	@GetMapping("/cards")
	public List<Card> getCards() {
		// TODO Auto-generated method stub
		return service.getAllCards();
	}
	
	
	/*
	 * Method to get API of one card
	 */
	@GetMapping("cards/{id}")
	public Card getCard(@PathVariable int id) {
		try {
			return service.findCardById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	@Autowired
	public void setOrdersService(CardBusinessInterface service)
	{
		this.service = service;
	}
}
