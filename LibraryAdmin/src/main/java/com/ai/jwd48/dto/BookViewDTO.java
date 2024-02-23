package com.ai.jwd48.dto;

public class BookViewDTO {
	private int id;
	private String bookName;
	private int count;
	private double price;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public BookViewDTO() {

	}

	public BookViewDTO(int id, String bookName, int count, double price) {
		super();
		this.id = id;
		this.bookName = bookName;
		this.count = count;
		this.price = price;
	}

}
