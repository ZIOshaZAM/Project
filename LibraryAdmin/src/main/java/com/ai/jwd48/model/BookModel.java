package com.ai.jwd48.model;

public class BookModel {

	private int bookId;
	private String bookName;
	private String author;
	private String category;
	private int count;
	private double price;
	private String pdfLink;
	private String summary;
	private String createdDate;
	private String createdUser;

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getPdfLink() {
		return pdfLink;
	}

	public void setPdfLink(String pdfLink) {
		this.pdfLink = pdfLink;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getCreatedUser() {
		return createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}

	public BookModel() {

	}

	public BookModel(int bookId, String bookName, String author, String category, int count, double price,
			String pdfLink, String summary, String createdDate, String createdUser) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.category = category;
		this.count = count;
		this.price = price;
		this.pdfLink = pdfLink;
		this.summary = summary;
		this.createdDate = createdDate;
		this.createdUser = createdUser;

	}

}
