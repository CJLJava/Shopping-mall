package com.chenjin.entity;

import java.io.Serializable;

public class Clothing implements Serializable {
	private static final long serialVersionUID = -238851220815861492L;
	private String id;
	private String name;
	private String src;
	private double price;
	private int inventory;
	private String description;

	public Clothing() {
	}

	public Clothing(String id, String name, String src, double price, int inventory, String description) {
		this.id = id;
		this.name = name;
		this.src = src;
		this.price = price;
		this.inventory = inventory;
		this.description = description;
	}

	@Override
	public String toString() {
		return "Clothing [id=" + id + ", name=" + name + ", src=" + src + ", price=" + price + ", inventory="
				+ inventory + ", description=" + description + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}