package com.spring.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.spring.demo.info.CartInfo;
import com.spring.demo.model.OrderDetail;
import com.spring.demo.model.Product;
import com.spring.demo.model.ProductSimilar;


@Repository
public class ProductDAOImpl implements ProductDAO{

	
	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);

    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }
    
    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProduct() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where status!=0").list();
        return productList;
	}
    
    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductHotSale() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where hot_deal = true").setMaxResults(8).list();
        return productList;
	}
    
    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductTrend() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where trend = true").setMaxResults(4).list();
        return productList;
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductLatest_review() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where latest_review = true").setMaxResults(4).list();
        return productList;
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductHotBest() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where hot_best = true").setMaxResults(4).list();
        return productList;
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Product> listProductHotNew() {
    	Session session = this.sessionFactory.getCurrentSession();
        List<Product> productList = session.createQuery("from Product where hot_new = true").setMaxResults(8).list();
        return productList;
	}
    
    @Override
    public Product getProductById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Product p = (Product) session.load(Product.class, new Integer(id));
        logger.info("Product loaded successfully, Product details=" + p);
        return p;
    }

	@Override
	public int GetProductInCart(CartInfo cart) {
		if(cart!=null)
		return cart.countProductCart();
		else
		return 0;
	}

	@Override
	public List<Product> getListProductSimilar(int id) {
		Session session = this.sessionFactory.getCurrentSession();
        @SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery("from Product  where id in (select id_productsimilar from "
        		+ "ProductSimilar where id_product = ? )").setParameter(0,id).setMaxResults(4).list();
        return productList;
	}

	@Override
	public List<Product> listTrash() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Product where status=0";
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery(hql).list();
		return productList;
	}

	@Override
	public void addProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		
	}

	@Override
	public void updateProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		
	}
	
	
	@Override
	public void removeProducty(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if (null != p) {
			List<ProductSimilar> lst = this.listSimilar(id);
			for (ProductSimilar p1 : lst) {
	            session.delete(p1);
	        }
			session.delete(p);
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductSimilar> listSimilar(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		List<ProductSimilar> productListSimilar = session.createQuery("from ProductSimilar where id_productsimilar=?").setParameter(0,id).list();
        return productListSimilar;
	}


}
