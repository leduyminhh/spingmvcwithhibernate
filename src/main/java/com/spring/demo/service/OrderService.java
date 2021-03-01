package com.spring.demo.service;

import java.util.List;

import com.spring.demo.model.Order;

public interface OrderService {
	public List<Order> listOrder();

	public void AddOrder(String username);

	public Order getIdMax();

	public List<Order> listTrash();

	public void updateOrder(Order o);

	public void removeOrder(int id);
	
	public Order getOrderById(int id);

}