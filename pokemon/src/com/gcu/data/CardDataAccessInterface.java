package com.gcu.data;

import java.util.List;

import com.gcu.model.Card;


public interface CardDataAccessInterface <T>
{
	
	public List<T> findAll();
	public boolean create(T t);
	public boolean delete(String name);
	public boolean update (T t);
	public Card findCardById(int id);
	
}