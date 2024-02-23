package com.ai.jwd48.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.services.BookService;

@Controller
public class ViewController {
	@Autowired
	private BookService bookService;

	@RequestMapping("/viewBook")
	public String view(BookModel bookModel, ModelMap model, HttpSession session) {
		List<BookModel> books = bookService.viewAllBook();
		model.addAttribute("books", books);
		session.setAttribute("addBook", "Adding Book Successfully!!!");
		return "viewBook";
	}

}
