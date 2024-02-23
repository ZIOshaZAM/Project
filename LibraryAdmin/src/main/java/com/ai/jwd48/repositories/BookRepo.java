package com.ai.jwd48.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.ai.jwd48.model.BookModel;

@Component
public class BookRepo extends DBContext {

	public void addBook(BookModel book) {

		Connection conn = getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement("Insert into book(bookName, author, category, count,"
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
			PreparedStatement ps = conn.prepareStatement("Select * from book");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BookModel book = new BookModel();
				book.setBookId(rs.getInt("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setPrice(rs.getDouble("price"));
				book.setCount(rs.getInt("count"));
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
			PreparedStatement ps = conn.prepareStatement("select * from book where bookid=?");
			ps.setInt(1, bookId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				book = new BookModel();
				book.setBookId(rs.getInt("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setCategory(rs.getString("category"));
				book.setCount(rs.getInt("count"));
				book.setPrice(rs.getDouble("price"));
				book.setPdfLink(rs.getString("PDFLink"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return book;
	}

}
