package com.ai.jwd48.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ai.jwd48.dto.BookDTO;
import com.ai.jwd48.model.BookModel;
import com.ai.jwd48.services.BookService;

@Controller
public class EditController {
	@Autowired
	private BookService bookService;

	@GetMapping("/editPrice")
	public String editPrice(BookModel BookModel, ModelMap model, HttpSession session) {
		int bookId = Integer.valueOf(BookModel.getBookId());

		BookModel book = bookService.findBookById(bookId);
		model.addAttribute("bookEdit", book);
		return "editPrice";
	}

	@PostMapping("/editedPrice")
	public String editedPrice(BookModel BookModel, ModelMap model, HttpSession session) {
		BookModel book = new BookModel();
		book.setCount(Integer.valueOf(BookModel.getCount()));
		book.setBookId(Integer.valueOf(BookModel.getBookId()));
		book.setPrice((BookModel.getPrice()));
		String UserName = (String) session.getAttribute("loginUserName");
		book.setUpdatedUser(UserName);
		bookService.update(book);
		return "redirect: viewBook";
	}

	@GetMapping("/editCount")
	public String editCount(BookModel BookModel, ModelMap model, HttpSession session) {
		int bookId = Integer.valueOf(BookModel.getBookId());

		BookModel book = bookService.findBookById(bookId);
		model.addAttribute("countEdit", book);
		return "countEdit";
	}

	@PostMapping("/editCount")
	public String editCountPost(BookModel BookModel, ModelMap model, HttpSession session) {
		BookModel book = new BookModel();
		book.setCount(Integer.valueOf(BookModel.getCount()));
		book.setBookId(Integer.valueOf(BookModel.getBookId()));
		book.setPrice((BookModel.getPrice()));
		String UserName = (String) session.getAttribute("loginUserName");
		book.setUpdatedUser(UserName);
		bookService.update(book);
		return "redirect: viewBook";
	}

	@GetMapping("/wholeEdit")
	public String wholeEdit(BookDTO BookDto, ModelMap model, HttpSession session) {
		int bookId=Integer.valueOf(BookDto.getBookId());
		BookDTO book=bookService.findBookDTOById(bookId);
		model.addAttribute("editBook", book);
		return "editBook";
	}
	@PostMapping ("/editedBook")
	public String editedBook(BookDTO BookDto, ModelMap model,HttpSession session) {
		BookDTO book=new BookDTO();
		book.setBookId(Integer.valueOf(BookDto.getBookId()));
		book.setBookName(BookDto.getBookName());
		book.setAuthorId(Integer.valueOf(BookDto.getAuthorId()));
		book.setCategoryId(Integer.valueOf(BookDto.getCategoryId()));
		book.setCount(Integer.valueOf(BookDto.getCount()));
		book.setPrice(BookDto.getPrice());
		book.setPdfLink(BookDto.getPdfLink());
		book.setSummary(BookDto.getSummary());
		book.setUpdatedUser((String) session.getAttribute("loginUserName"));
		bookService.editBook(book);
		return "redirect: viewBook";
	}
}
