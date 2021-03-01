package com.spring.demo.service;

import java.util.List;

import com.spring.demo.info.CartInfo;
import com.spring.demo.model.OrderDetail;

public interface OrderDetailService {
    public List<OrderDetail> listOrderDetail();
    public void insertOrderDetail(CartInfo carl,int id_order);
    public List<OrderDetail> listOrderDetail(int id_order);
}