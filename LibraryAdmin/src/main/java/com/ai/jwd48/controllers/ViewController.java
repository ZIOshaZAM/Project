package com.ai.jwd48.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.model.PaymentModel;
import com.ai.jwd48.services.BookService;
import com.ai.jwd48.services.PaymentService;

@Controller
public class ViewController {
	@Autowired
	private BookService bookService;
	@Autowired
	private PaymentService paymentService;

	@RequestMapping("/viewBook")
	public String view(BookModel bookModel, PaymentModel paymentModel, ModelMap model, HttpSession session) {
		List<BookModel> books = bookService.viewAllBook();
		model.addAttribute("books", books);
		List<PaymentModel> payments = paymentService.viewPayment();
		model.addAttribute("payments", payments);
		session.setAttribute("addBook", "Adding Book Successfully!!!");
		return "viewBook";
	}

}
