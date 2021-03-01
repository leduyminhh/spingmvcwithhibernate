package com.spring.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.demo.dao.CustomerDAO;
import com.spring.demo.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerDAO customerDAO;
	public void setCustomerDAO(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }
	@Override
	public Customer findByUserName(String username) {
		return this.customerDAO.findByUserName(username);
	}
	@Override
	public Customer findById(int id) {
		return this.customerDAO.findById(id);
	}
	

}
