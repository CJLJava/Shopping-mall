package com.chenjin.entity;

import java.io.Serializable;

public class Book implements Serializable{
	private String id;
	private String name;
	private String author;
	private String description;
	private String isBorrowed;

	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author + ", description=" + description
				+ ", isBorrowed=" + isBorrowed + "]";
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIsBorrowed() {
		return isBorrowed;
	}

	public void setIsBorrowed(String isBorrowed) {
		this.isBorrowed = isBorrowed;
	}
}