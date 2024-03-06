package com.ai.jwd48.dto;

public class BookDTO {
	private int bookId;
	private String bookName;
	private int authorId;
	private int categoryId;
	private double price;
	private int count;
	private String pdfLink;
	private String summary;
	private String updatedUser;
	private String updatedDate;

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

	
	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
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

	public String getUpdatedUser() {
		return updatedUser;
	}

	public void setUpdatedUser(String updatedUser) {
		this.updatedUser = updatedUser;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	public BookDTO() {
		
	}
	public BookDTO(int bookId, String bookName, int authorId, int categoryId, double price, int count, String pdfLink,
			String summary, String updatedUser, String updatedDate) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.authorId = authorId;
		this.categoryId = categoryId;
		this.price = price;
		this.count = count;
		this.pdfLink = pdfLink;
		this.summary = summary;
		this.updatedUser = updatedUser;
		this.updatedDate = updatedDate;
	}
	
}