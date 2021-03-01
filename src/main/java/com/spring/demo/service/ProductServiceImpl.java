package com.spring.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.dao.ProductDAO;
import com.spring.demo.info.CartInfo;
import com.spring.demo.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
    private ProductDAO productDAO;

    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }
	@Override
	public List<Product> listProduct() {
		return this.productDAO.listProduct();
	}
	@Override
	public List<Product> listProductHotSale() {
		return this.productDAO.listProductHotSale();
	}
	@Override
	public List<Product> listProductTrend() {
		return this.productDAO.listProductTrend();
	}
	@Override
	public List<Product> listProductLatest_review() {
		return this.productDAO.listProductLatest_review();
	}
	@Override
	public List<Product> listProductHotBest() {
		return this.productDAO.listProductHotBest();
	}
	@Override
	public List<Product> listProductHotNew() {
		return this.productDAO.listProductHotNew();
	}
	@Override
	public Product getProductById(int id) {
		return this.productDAO.getProductById(id);
	}
	@Override
	public int GetProductInCart(CartInfo cart) {
		return this.productDAO.GetProductInCart(cart);
	}
	@Override
	public List<Product> getListProductSimilar(int id) {
		return productDAO.getListProductSimilar(id);
	}
	@Override
	public List<Product> listTrash() {
		return this.productDAO.listTrash();
	}
	@Override
	public void addProduct(Product c) {
		this.productDAO.addProduct(c);
		
	}
	@Override
	public void updateProduct(Product c) {
		this.productDAO.updateProduct(c);
		
	}
	@Override
	public void removeProducty(int id) {
		this.productDAO.removeProducty(id);
		
	}
	

}
