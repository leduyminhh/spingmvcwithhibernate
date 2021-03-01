package com.spring.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.dao.OrderDAO;
import com.spring.demo.model.Order;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderDAO orderDAO;

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	@Override
	public List<Order> listOrder() {
		return this.orderDAO.listOrder();
	}

	@Override
	public void AddOrder(String username) {
		this.orderDAO.AddOrder(username);

	}

	@Override
	public Order getIdMax() {
		return this.orderDAO.getIdMax();
	}

	@Override
	public List<Order> listTrash() {
		return this.orderDAO.listTrash();
	}

	@Override
	public void updateOrder(Order o) {
		this.orderDAO.updateOrder(o);
		
	}

	@Override
	public void removeOrder(int id) {
		this.orderDAO.removeOrder(id);
	}

	@Override
	public Order getOrderById(int id) {
		return this.orderDAO.getOrderById(id);
	}

}
