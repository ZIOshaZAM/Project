package com.ai.jwd48.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ai.jwd48.model.UserModel;
import com.ai.jwd48.repositories.UserRepo;

@Service
public class UserService {
	@Autowired
	private UserRepo repo;

	public boolean checkEmailAndPassword(String email, String password) {

		UserModel user = repo.findByEmail(email);

		if (null == user) {
			return false;
		} else {
			if (password.equals(user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}

	public String getName(String email) {
		UserModel user = repo.findByEmail(email);
		return user.getName();

	}

}
