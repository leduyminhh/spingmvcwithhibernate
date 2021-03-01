package com.spring.demo.service;

import java.util.List;

import com.spring.demo.info.CartInfo;
import com.spring.demo.model.Product;


public interface ProductService {
	public List<Product> listProduct();
	public List<Product> listProductHotNew();
	public List<Product> listProductHotSale();
	public List<Product> listProductTrend();
	public List<Product> listProductLatest_review();
	public List<Product> listProductHotBest();
	public Product getProductById(int id);
	public int GetProductInCart(CartInfo cart);
	public List<Product> getListProductSimilar(int id);
	public List<Product> listTrash();
    public void addProduct(Product c);
    public void updateProduct(Product c);
    public void removeProducty(int id);
}