package com.spring.demo.service;

import java.util.List;

import com.spring.demo.model.Category;


public interface CategoryService {
	public List<Category> listCategory();
    public void addCategory(Category c);
    public List<Category> listTrash();
    public void updateCategory(Category c);
    public Category getCategoryById(int id);
    public void removeCategory(int id);
}