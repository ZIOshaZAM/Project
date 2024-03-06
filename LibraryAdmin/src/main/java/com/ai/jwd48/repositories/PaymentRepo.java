package com.ai.jwd48.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.ai.jwd48.model.PaymentModel;

@Component
public class PaymentRepo extends DBContext {

	public void addPayment(PaymentModel payment) {
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("insert into payment (name) values (?)");
			ps.setString(1, payment.getName());
			ps.execute();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public List<PaymentModel> viewPayment() {
		List<PaymentModel> payments = new ArrayList<>();
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from payment");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PaymentModel payment = new PaymentModel();
				payment.setId(rs.getInt("id"));
				payment.setName(rs.getString("name"));
				payments.add(payment);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return payments;
	}
}
