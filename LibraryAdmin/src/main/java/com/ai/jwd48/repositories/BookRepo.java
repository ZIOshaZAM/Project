package com.ai.jwd48.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.ai.jwd48.dto.BookDTO;
import com.ai.jwd48.model.BookModel;

@Component
public class BookRepo extends DBContext {

	public void addBook(BookModel book) {

		Connection conn = getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement("Insert into book(bookName, author_id, category, count,"
					+ " price, pdfLink,summary,createdDate,createdUser)" + "VALUES (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, book.getBookName());
			ps.setString(2, book.getAuthor());
			ps.setString(3, book.getCategory());
			ps.setInt(4, book.getCount());
			ps.setDouble(5, book.getPrice());
			ps.setString(6, book.getPdfLink());
			ps.setString(7, book.getSummary());
			java.util.Date currentDate = new java.util.Date();
			ps.setTimestamp(8, new java.sql.Timestamp(currentDate.getTime()));
			ps.setString(9, book.getCreatedUser());
			ps.execute();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public List<BookModel> viewAllBook() {
		List<BookModel> books = new ArrayList<>();
		Connection conn = getConnection();

		try {
			PreparedStatement ps = conn
					.prepareStatement("select * from book b\r\n" + "inner join author a on b.author_id= a.author_id");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BookModel book = new BookModel();
				book.setBookId(rs.getInt("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setCategory(rs.getString("category_id"));
				book.setSummary(rs.getString("summary"));
				book.setAuthor(rs.getString("author_name"));
				book.setPrice(rs.getDouble("price"));
				book.setCount(rs.getInt("count"));
				book.setPdfLink(rs.getString("pdfLink"));
				books.add(book);
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return books;
	}

	public BookModel findBookById(int bookId) {
		BookModel book = null;

		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"select * from book b\r\n" + "inner join author a on b.author_id= a.author_id where bookId=?");
			ps.setInt(1, bookId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				book = new BookModel();
				book.setBookId(rs.getInt("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author_name"));
				book.setCategory(rs.getString("category_id"));
				book.setCount(rs.getInt("count"));
				book.setPrice(rs.getDouble("price"));
				book.setPdfLink(rs.getString("PDFLink"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return book;
	}

	public void update(BookModel book) {
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn
					.prepareStatement("update book set count =?,price=?,updatedUser=?,updatedDate=? where bookId=?");
			ps.setInt(1, book.getCount());
			ps.setDouble(2, book.getPrice());
			ps.setString(3, book.getUpdatedUser());
			java.util.Date currentDate = new java.util.Date();
			ps.setTimestamp(4, new java.sql.Timestamp(currentDate.getTime()));
			ps.setInt(5, book.getBookId());
			ps.execute();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public void editBook(BookDTO book) {
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn
					.prepareStatement("update book set bookName=?,author_id=?,category_id=?,price=?,count=?,summary=?,"
							+ "pdfLink=?,updatedUser=?,updatedDate=? where bookId=?");
			ps.setString(1, book.getBookName());
			ps.setInt(2, book.getAuthorId());
			ps.setInt(3, book.getCategoryId());
			ps.setDouble(4, book.getPrice());
			ps.setInt(5, book.getCount());
			ps.setString(6, book.getSummary());
			ps.setString(7, book.getPdfLink());
			java.util.Date currentDate = new java.util.Date();
			ps.setTimestamp(8, new java.sql.Timestamp(currentDate.getTime()));
			ps.setString(9, book.getUpdatedDate());
			ps.setInt(10, book.getBookId());
			ps.execute();
		} catch (SQLException e) {
			System.out.println();
		}
	}
	public BookDTO findBookDTOById(int bookId) {
		BookDTO book = null;

		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"select * from book b\r\n" + "inner join author a on b.author_id= a.author_id where bookId=?");
			ps.setInt(1, bookId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				book = new BookDTO();
				book.setBookId(rs.getInt("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthorId(rs.getInt("author_id"));
				book.setCategoryId(rs.getInt("category_id"));
				book.setCount(rs.getInt("count"));
				book.setPrice(rs.getDouble("price"));
				book.setPdfLink(rs.getString("PDFLink"));
				book.setSummary(rs.getString("summary"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return book;
	}

}
