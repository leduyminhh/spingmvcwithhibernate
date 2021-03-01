package com.spring.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.demo.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Customer findByUserName(String username) {
		 Session session = null;
		 
	        try {
	            session = sessionFactory.openSession();
	            List<Customer> customers = new ArrayList<Customer>();
	            customers = session.createQuery("from Customer where name_user=?")
	                    .setParameter(0, username).list();
	            if (customers.size() > 0) {
	                return customers.get(0);
	            }
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        }
	        return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Customer findById(int id) {
		Session session = null;
		 
        try {
            session = sessionFactory.openSession();
            List<Customer> customers = new ArrayList<Customer>();
            customers = session.createQuery("from Customer where id=?")
                    .setParameter(0, id).list();
            if (customers.size() > 0) {
                return customers.get(0);
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
	}

}
