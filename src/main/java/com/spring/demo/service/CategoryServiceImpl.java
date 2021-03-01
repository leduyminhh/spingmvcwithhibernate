package com.spring.demo.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.dao.CategoryDAO;
import com.spring.demo.model.Category;


@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{

	@Autowired
    private CategoryDAO categoryDAO;

    public void setCategoryDAO(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }
	@Override
	public List<Category> listCategory() {
		return this.categoryDAO.listCategory();
	}
	@Override
	public void addCategory(Category c) {
		this.categoryDAO.addCategory(c);
		
	}
	@Override
	public void updateCategory(Category c) {
		this.categoryDAO.updateCategory(c);
		
	}
	@Override
	public Category getCategoryById(int id) {
		return this.categoryDAO.getCategoryById(id);
	}
	@Override
	public void removeCategory(int id){
		this.categoryDAO.removeCategory(id);
		
	}
	@Override
	public List<Category> listTrash() {
		return this.categoryDAO.listTrash();
	}


}
