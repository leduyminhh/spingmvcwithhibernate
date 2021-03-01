package com.spring.demo.dao;

import java.util.List;

import com.spring.demo.info.CartInfo;
import com.spring.demo.model.OrderDetail;

public interface OrderDetailDAO {
    public List<OrderDetail> listOrderDetail();
    public void insertOrderDetail(CartInfo carl,int id_order);
    public List<OrderDetail> listOrderDetail(int id_order);
}