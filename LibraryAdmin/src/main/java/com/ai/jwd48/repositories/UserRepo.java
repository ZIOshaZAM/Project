package com.ai.jwd48.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

import com.ai.jwd48.model.UserModel;

@Component
public class UserRepo extends DBContext {
	public UserModel findByEmail(String email) {
		UserModel user = null;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from user where email = ? ");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new UserModel();
				user.setId(rs.getInt("User_id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getString("role"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return user;
	}

	

}
