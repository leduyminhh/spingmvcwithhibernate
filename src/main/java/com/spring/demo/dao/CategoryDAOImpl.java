package com.spring.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.spring.demo.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	private static final Logger logger = LoggerFactory.getLogger(CategoryDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> listCategory() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Category where status!=0 order by parent";
		List<Category> categoryList = session.createQuery(hql).list();
		return categoryList;
	}
	@Override
	public List<Category> listTrash() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Category where status=0 order by parent";
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery(hql).list();
		return categoryList;
	}
	@Override
	public void addCategory(Category c) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(c);

	}

	@Override
	public void updateCategory(Category c) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(c);

	}

	@SuppressWarnings("unchecked")
	@Override
	public Category getCategoryById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Category> category =  session.createQuery("from Category where id=?").setParameter(0,id).list();
		return category.get(0);
	}

	@Override
	public void removeCategory(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Category c = (Category) session.load(Category.class, new Integer(id));
		if (null != c) {
			session.delete(c);
		}
		

	}




}