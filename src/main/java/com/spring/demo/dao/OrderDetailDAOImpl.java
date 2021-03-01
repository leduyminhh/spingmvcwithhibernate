package com.spring.demo.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.spring.demo.info.CartInfo;
import com.spring.demo.info.CartLineInfo;
import com.spring.demo.model.OrderDetail;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetail> listOrderDetail() {
		Session session = this.sessionFactory.getCurrentSession();
		List<OrderDetail> orderdlist = session.createQuery("from OrderDetail").list();
		return orderdlist;
	}

	@Override
	public void insertOrderDetail(CartInfo carl, int id_order) {
		Session session = this.sessionFactory.getCurrentSession();
		List<CartLineInfo> lst = carl.getCartLines();
		for (CartLineInfo line : lst) {
			OrderDetail od = new OrderDetail(line.getAmount(), line.getProductInfo().getPrice(), line.getQuantity(),
					id_order, line.getProductInfo().getCode(),new Date(),null);
			session.persist(od);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetail> listOrderDetail(int id_order) {
		Session session = this.sessionFactory.getCurrentSession();
		List<OrderDetail> orderdetails =  session.createQuery("from OrderDetail where order_id=?").setParameter(0,id_order).list();
		return orderdetails;
	}

}
