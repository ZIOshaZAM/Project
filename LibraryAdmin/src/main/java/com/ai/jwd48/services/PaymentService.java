package com.ai.jwd48.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ai.jwd48.model.PaymentModel;
import com.ai.jwd48.repositories.PaymentRepo;

@Service
public class PaymentService {
	@Autowired
	private PaymentRepo repo;

	public void addPayment(PaymentModel payment) {
		repo.addPayment(payment);
	}

	public List<PaymentModel> viewPayment() {
		List<PaymentModel> payments = repo.viewPayment();
		return payments;
	}
}
