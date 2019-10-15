package com.gcu.controller;

import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gcu.business.UserBusinessInterface;
import com.gcu.model.User;

/*
 * This is Register Controller class of application, where calls object from user model, and forward data to View
 */
@Controller
@RequestMapping("/user")
public class UserController {

	public UserBusinessInterface service;

	/*
	 * Method to display index view
	 */
	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView dislpayIndex() {
		return new ModelAndView("index", "user", new User("", "", "", "", "", 0));
	}

	/*
	 * Method to navigate to register page
	 */
	@RequestMapping(path = "/register", method = RequestMethod.GET)
	public ModelAndView displayRegister() {
		return new ModelAndView("register", "user", new User("", "", "", "", "", 0));
	}

	/*
	 * This function for register application
	 */
	@RequestMapping(path = "/registerSuccess", method = RequestMethod.POST)
	@ModelAttribute("service")
	public ModelAndView registerUser(@Valid @ModelAttribute("user") User user, BindingResult result)
			throws SQLException {
		if (result.hasErrors()) {
			return new ModelAndView("register", "user", user);
		} else {
			if (service.findByName(user.getUserName())) {
				return new ModelAndView("registerError", "user", user);
			} else {
				service.createUser(new User(user.getFirstName(), user.getLastName(), user.getUserName(),
						user.getPassword(), user.getEmail(), user.getGender()));
				return new ModelAndView("registerSuccess", "user", user);
			}
			// TODO Auto-generated catch block

		}
	}

	/*
	 * This function for login application
	 */
	@RequestMapping(path = "/login", method = RequestMethod.POST)
	@ModelAttribute("service")
	public ModelAndView loginUser(User user, BindingResult result, HttpSession session, HttpServletRequest request)
			throws DataAccessException, SQLException {
		if (result.hasErrors()) {
			return new ModelAndView("index", "user", user);
		}
		if (service.login(user.getUserName(), user.getPassword()) != null) {
			User user1 = service.login(user.getUserName(), user.getPassword());
			session.setAttribute("session", user1);
			return new ModelAndView("login", "user", user1);

		} else
			return new ModelAndView("loginError", "user", user);
	}

	/*
	 * This function return homepage from other view
	 */
	@RequestMapping(path = "homepage{userName}&{password}", method = RequestMethod.GET)
	@ModelAttribute("service")
	public ModelAndView homePage(@PathVariable String userName, @PathVariable String password)
			throws DataAccessException, SQLException {
		User user = service.login(userName, password);
		return new ModelAndView("homepage", "user", user);

	}

	/*
	 * This function set property for Spring Bean
	 */
	public void setUserService(UserBusinessInterface service) {
		this.service = service;
	}

}
