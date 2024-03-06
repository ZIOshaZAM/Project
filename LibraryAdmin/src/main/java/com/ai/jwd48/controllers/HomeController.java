package com.ai.jwd48.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.model.PaymentModel;
import com.ai.jwd48.services.BookService;
import com.ai.jwd48.services.PaymentService;

@Controller
public class HomeController {
	@Autowired
	private BookService bookService;
	@Autowired
	private PaymentService paymentService;
	@RequestMapping("/home")
	public String home() {
		return "reditect: viewBook";
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

	@GetMapping("/addPayment")
	public String addingPayment() {
		return "addPayment";
	}

	@PostMapping("/addPayment")
	public String addPayment(PaymentModel PaymentModel, ModelMap model, HttpSession session) {
		PaymentModel payment = new PaymentModel();
		payment.setName(PaymentModel.getName());
		paymentService.addPayment(payment);
		return "redirect:/viewBook";
	}
}
