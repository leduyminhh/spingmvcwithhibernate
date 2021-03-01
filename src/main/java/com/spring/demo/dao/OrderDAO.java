package com.spring.demo.dao;

import java.util.List;

import com.spring.demo.model.Order;

public interface OrderDAO {
	public List<Order> listOrder();

	public void AddOrder(String username);

	public Order getIdMax();
	
	public Order getOrderById(int id);

	public List<Order> listTrash();

	public void updateOrder(Order o);

	public void removeOrder(int id);

}