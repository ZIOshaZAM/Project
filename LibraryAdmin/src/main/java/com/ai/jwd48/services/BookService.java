package com.ai.jwd48.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ai.jwd48.dto.BookDTO;
import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.repositories.BookRepo;

@Service
public class BookService {
	@Autowired
	private BookRepo bookRepo;

	public void addBook(BookModel book) {
		bookRepo.addBook(book);
	}

	public List<BookModel> viewAllBook() {
		List<BookModel> books = bookRepo.viewAllBook();
		return books;
	}

	public BookModel findBookById(int bookId) {

		return bookRepo.findBookById(bookId);
	}
	public void update(BookModel book) {

		bookRepo.update(book);
	}
	public void editBook(BookDTO book) {

		bookRepo.editBook(book);
	}
	public BookDTO findBookDTOById(int bookId) {

		return bookRepo.findBookDTOById(bookId);
	}
}
