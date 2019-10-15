package com.gcu.controller;

import java.sql.SQLException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.business.CardBusinessInterface;

import com.gcu.model.Card;

/*
 * CardController class
 */
@Controller
@RequestMapping("/user")
public class CardController {
	public CardBusinessInterface service;

	/*
	 * This function return view to display addCard form
	 */
	@RequestMapping(path = "/addcard", method = RequestMethod.GET)
	public ModelAndView displayAddCard() {
		return new ModelAndView("addCard", "card", new Card("", 0, "", "", "", "", 0, "", 0, 0));
	}

	/*
	 * This function to perform add Card to a list of Card
	 */
	@RequestMapping(path = "/addCardSuccess2", method = RequestMethod.POST)
	@ModelAttribute("service")
	public ModelAndView addCard(@Valid @ModelAttribute("card") Card card, BindingResult result)
			throws DataAccessException, SQLException {
		if (result.hasErrors()) {
			return new ModelAndView("addCard", "card", card);
		} else {
			service.createCard(
					new Card(card.getName(), card.getHp(), card.getStage(), card.getWeakness(), card.getResistance(),
							card.getRetreat(), card.getRarity(), card.getAbilities(), card.getPrice(), card.getId()));

			return new ModelAndView("addCardSuccess2", "cards", service.getAllCards());
		}
	}

	/*
	 * This function show cards in the list
	 */
	@RequestMapping(path = "/showcards", method = RequestMethod.GET)
	public ModelAndView showCards() throws DataAccessException, SQLException {
		return new ModelAndView("showCard2", "cards", service.getAllCards());

	}

	/*
	 * This function to navigate to edit response a card
	 */
	@RequestMapping(path = "/editResponse", params = { "edit" }, method = RequestMethod.GET)
	// @ModelAttribute("card")
	public ModelAndView edit(@RequestParam String edit, @RequestParam int id, @ModelAttribute Card card,
			BindingResult result) throws DataAccessException, SQLException {

		return new ModelAndView("editResponse", "card", service.findCardById(id));
	}

	/*
	 * Function to update Card information
	 */
	@RequestMapping(path = "/editSuccess", method = RequestMethod.POST)
	@ModelAttribute("service")
	public ModelAndView editUpdate(@Valid @ModelAttribute("card") Card card, BindingResult result)
			throws DataAccessException, SQLException {
		if (result.hasErrors()) {
			return new ModelAndView("addCard", "card", card);
		} else {
			service.update(
					new Card(card.getName(), card.getHp(), card.getStage(), card.getWeakness(), card.getResistance(),
							card.getRetreat(), card.getRarity(), card.getAbilities(), card.getPrice(), card.getId()));

			return new ModelAndView("showCard2", "cards", service.getAllCards());
		}
	}

	/*
	 * Method to view a Card detail
	 */
	@RequestMapping(path = "/viewCard", params = { "view" }, method = RequestMethod.GET)
	// @ModelAttribute("card")
	public ModelAndView viewCard(@RequestParam String view, @RequestParam int id, @ModelAttribute Card card,
			BindingResult result) throws SQLException {

		return new ModelAndView("viewCard", "card", service.findCardById(id));
	}

	/*
	 * Method to view a Card detail using REST
	 */
	@RequestMapping(value = "/viewCard2/{id}", method = RequestMethod.GET)
	public ModelAndView viewCard2(@PathVariable("id") int id) throws SQLException {
		return new ModelAndView("viewCard2", "card", service.findCardById(id));
	}

	/*
	 * Method Controller to go to edit response a card using REST
	 */
	@RequestMapping(path = "/edit/{id}", method = RequestMethod.GET)
	// @ModelAttribute("card")
	public ModelAndView edit2(@PathVariable("id") int id) throws SQLException {

		return new ModelAndView("editResponse", "card", service.findCardById(id));
	}

	/*
	 * MEthod to delete a card
	 */
	@RequestMapping(value = "/delete", params = { "delete" }, method = RequestMethod.POST)
	public ModelAndView delete(@RequestParam String name, @RequestParam String delete) {
		int id = Integer.parseInt(name);
		service.delete(id);
		return new ModelAndView("showCard2", "cards", service.getAllCards());
	}

	/*
	 * MEthod to delete a card using REST
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete2(@PathVariable("id") int id) throws DataAccessException, SQLException {
		service.delete(id);
		return new ModelAndView("deletePass", "cards", service.getAllCards());
	}

	/*
	 * This function set property for Spring bean
	 */
	@Autowired
	public void setCardService(CardBusinessInterface service) {
		this.service = service;
	}

}
