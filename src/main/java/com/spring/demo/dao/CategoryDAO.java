package com.spring.demo.dao;

import java.util.List;

import com.spring.demo.model.Category;


public interface CategoryDAO {
    public List<Category> listCategory();
    public List<Category> listTrash();
    public void addCategory(Category c);
    public void updateCategory(Category c);
    public Category getCategoryById(int id);
    public void removeCategory(int id);

}