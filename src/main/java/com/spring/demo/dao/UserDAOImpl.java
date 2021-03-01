package com.spring.demo.dao;

import java.util.ArrayList;
import java.util.List;
 
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.model.User;
 
 
public class UserDAOImpl implements UserDAO {
    private SessionFactory sessionFactory;
 
    @SuppressWarnings("unchecked")
	@Transactional
    public User findByUserName(String username) {
        Session session = null;
 
        try {
            session = sessionFactory.openSession();
            List<User> users = new ArrayList<User>();
            users = session.createQuery("from User where username=?")
                    .setParameter(0, username).list();
            if (users.size() > 0) {
                return users.get(0);
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }
 
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
 
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @SuppressWarnings("unchecked")
	@Override
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> user =  session.createQuery("from User where id=?").setParameter(0,id).list();
		return user.get(0);
	}
    
    @SuppressWarnings("unchecked")
   	@Override
   	public List<User> listUser() {
       	Session session = this.sessionFactory.getCurrentSession();
           List<User> userList = session.createQuery("from User where status!=0").list();
           return userList;
   	}

	@Override
	public List<User> listTrash() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from User where status=0";
		@SuppressWarnings("unchecked")
		List<User> userList = session.createQuery(hql).list();
		return userList;
	}

	@Override
	public void addUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(u);
		
	}

	@Override
	public void updateUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(u);
		
	}

	@Override
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User u = (User) session.load(User.class, new Integer(id));
		if (null != u) {
			session.delete(u);
		}
		
		
	}
    
    
}