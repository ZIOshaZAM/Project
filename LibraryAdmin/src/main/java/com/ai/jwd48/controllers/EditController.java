package com.ai.jwd48.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.repositories.BookRepo;

@Controller
public class EditController {
	@Autowired
	private BookRepo bookRepo;

	@GetMapping("/editPrice")
	public String editPrice(BookModel BookModel, ModelMap model, HttpSession session) {
		int bookId = Integer.valueOf(BookModel.getBookId());

		BookModel book = bookRepo.findBookById(bookId);
		model.addAttribute("bookEdit", book);
		return "editPrice";
	}

}
