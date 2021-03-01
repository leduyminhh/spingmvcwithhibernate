package com.spring.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.dao.OrderDetailDAO;
import com.spring.demo.info.CartInfo;
import com.spring.demo.model.OrderDetail;

@Service
@Transactional
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	 public void setOrderDetailDAO(OrderDetailDAO orderDetailDAO) {
	        this.orderDetailDAO = orderDetailDAO;
	    }

	@Override
	public List<OrderDetail> listOrderDetail() {
		return this.orderDetailDAO.listOrderDetail();
	}

	@Override
	public void insertOrderDetail(CartInfo carl, int id_order) {
		this.orderDetailDAO.insertOrderDetail(carl, id_order);
	}

	@Override
	public List<OrderDetail> listOrderDetail(int id_order) {
		return this.orderDetailDAO.listOrderDetail(id_order);
	}
}
