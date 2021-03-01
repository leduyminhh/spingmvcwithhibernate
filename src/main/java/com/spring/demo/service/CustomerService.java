package com.spring.demo.service;

import com.spring.demo.model.Customer;

public interface CustomerService {
	public Customer findByUserName(String username);
	public Customer findById(int id);

}
