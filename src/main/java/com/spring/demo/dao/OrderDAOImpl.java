package com.spring.demo.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.demo.model.Order;
import com.spring.demo.model.OrderDetail;
import com.spring.demo.service.OrderDetailService;

@Repository

public class OrderDAOImpl implements OrderDAO {
	private SessionFactory sessionFactory;
	
	@Autowired(required = true)
	OrderDetailService orderDetailService;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> listOrder() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Order> orderList = session.createQuery("from Order where status!=0").list();
		return orderList;
	}

	@Override
	public void AddOrder(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Order o = new Order(username, new Date(),1);
		session.persist(o);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Order getIdMax() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Order> orderList = session.createQuery("from Order order by id desc").list();
		return orderList.get(0);
	}

	@Override
	public List<Order> listTrash() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Order where status=0";
		@SuppressWarnings("unchecked")
		List<Order> orderList = session.createQuery(hql).list();
		return orderList;
	}

	@Override
	public void updateOrder(Order o) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(o);
		
	}

	@Override
	public void removeOrder(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Order o = (Order) session.load(Order.class, new Integer(id));
		if (null != o) {
			List<OrderDetail> lst = orderDetailService.listOrderDetail(o.getId());
			for (OrderDetail od : lst) {
	            session.delete(od);
	        }
			session.delete(o);
		}
	}

	@Override
	public Order getOrderById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Order where id=?";
		@SuppressWarnings("unchecked")
		List<Order> orderList = session.createQuery(hql).setParameter(0, id).list();
		return orderList.get(0);
	}

}
