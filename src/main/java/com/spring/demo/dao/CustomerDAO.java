package com.spring.demo.dao;

import com.spring.demo.model.Customer;

public interface CustomerDAO {
	public Customer findByUserName(String username);
	public Customer findById(int id);
}