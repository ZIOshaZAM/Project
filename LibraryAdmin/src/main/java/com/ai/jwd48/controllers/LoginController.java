package com.ai.jwd48.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ai.jwd48.model.UserModel;
import com.ai.jwd48.services.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	@RequestMapping({ "/", "/login" })
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String login(UserModel UserModel, ModelMap model, HttpSession session) {
		if (userService.checkEmailAndPassword(UserModel.getEmail(), UserModel.getPassword())) {

			session.setAttribute("loginUserName", userService.getName(UserModel.getEmail()));
			return "home";
		} else {
			model.addAttribute("message", "Invalid E-mail and Password!!!");
			return "login";
		}

	}

}
