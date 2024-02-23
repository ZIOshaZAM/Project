package com.ai.jwd48.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.services.BookService;

@Controller
public class HomeController {
	@Autowired
	private BookService bookService;

	@RequestMapping({ "/", "/home" })
	public String home() {
		return "home";
	}

	@GetMapping("/addBook")
	public String addBook() {
		return "addBook";
	}

	@PostMapping("/addBook")
	public String addingBook(BookModel BookModel, ModelMap model, HttpSession session) {
		BookModel book = new BookModel();
		book.setBookName(BookModel.getBookName());
		book.setAuthor(BookModel.getAuthor());
		book.setCategory(BookModel.getCategory());
		book.setCount(BookModel.getCount());
		book.setPrice(BookModel.getPrice());
		book.setPdfLink(BookModel.getPdfLink());
		book.setSummary(BookModel.getSummary());
		book.setCreatedUser(BookModel.getCreatedUser());
		book.setCreatedDate(BookModel.getCreatedDate());
		bookService.addBook(book);
		return "redirect:/viewBook";
	}
}
