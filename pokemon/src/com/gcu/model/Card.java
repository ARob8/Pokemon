package com.gcu.model;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Card {
	@NotNull(message="Pokemon cards name cannot be null.")
	@Size(min=2,max=30, message="Pokemon cards name  must be between 2 and 30 characters.")
	String name;
	
	@NotNull(message="Pokemon cards HP cannot be null.")
	int hp;
	
	@NotNull(message="Pokemon cards stage cannot be null.")
	@Size(min=2,max=30, message="Pokemon cardsmust be between 2 and 30 characters.")
	String stage;
	
	@NotNull(message="Pokemon cards weakness cannot be null.")
	@Size(min=2,max=30, message="Pokemon cards weakness must be between 2 and 30 characters.")
	String weakness;
	
	@NotNull(message="Pokemon cards resistance cannot be null.")
	@Size(min=2,max=30, message="Pokemon cards resistance must be between 2 and 30 characters.")
	String resistance;
	
	@NotNull(message="Pokemon cards retreat cannot be null.")
	@Size(min=2,max=30, message="Pokemon cards retreat must be between 2 and 30 characters.")
	String retreat;
	
	@NotNull(message="Pokemon cards rarity cannot be null.")
	int rarity;
	
	@NotNull(message="Pokemon cards abilitities cannot be null.")
	@Size(min=2,max=30, message="Pokemon cards abilitities must be between 2 and 30 characters.")
	String abilities;
	
	
	@NotNull(message="Pokemon cards price cannot be null.")
	double price;
	
	int id;
	public Card()
	{
		
	}
	public Card(String name, int hp, String stage, String weakness, String resistance, String retreat, int rarity,
			String abilities, double d, int id) {
		this.name = name;
		this.hp = hp;
		this.stage = stage;
		this.weakness = weakness;
		this.resistance = resistance;
		this.retreat = retreat;
		this.rarity = rarity;
		this.abilities = abilities;
		this.price = d;
		this.id = id;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getWeakness() {
		return weakness;
	}

	public void setWeakness(String weakness) {
		this.weakness = weakness;
	}

	public String getResistance() {
		return resistance;
	}

	public void setResistance(String resistance) {
		this.resistance = resistance;
	}

	public String getRetreat() {
		return retreat;
	}

	public void setRetreat(String retreat) {
		this.retreat = retreat;
	}

	public int getRarity() {
		return rarity;
	}

	public void setRarity(int rarity) {
		this.rarity = rarity;
	}

	public String getAbilities() {
		return abilities;
	}

	public void setAbilities(String abilities) {
		this.abilities = abilities;
	}
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
