package com.spring.demo.controller.admin;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.model.Category;
import com.spring.demo.service.CategoryService;
@Controller
@RequestMapping(value = "/admin/category")
public class CategoryControllerAD {
	@Autowired 
	CategoryService categoryService;
	
    @RequestMapping(value = "/")
    public String showCate(Model model) {
    	model.addAttribute("listCate",categoryService.listCategory());
    	return "/admin/category/index";
    }
    
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editCate(Model model,@RequestParam("id") int id) {
    	model.addAttribute("cate", categoryService.getCategoryById(id));
    	model.addAttribute("listcate",categoryService.listCategory());
    	return "/admin/category/edit";
    }
    
    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public String addCate(Model model,@ModelAttribute("cate") Category cate) {
    	if(cate.getId()!=0)
    	{
    		cate.setUpdate_at(new Date());
    		categoryService.updateCategory(cate);
    	}
    	else {
    		cate.setCreate_at(new Date());
        	categoryService.addCategory(cate);
    	}
    	return "redirect:/admin/category/";
    }
    
    @RequestMapping(value = "/create",method = RequestMethod.GET)
    public String addCate(Model model) {
    	Category ca = new Category();
    	model.addAttribute("listcate",categoryService.listCategory());
    	model.addAttribute("cate",ca);
    	return "/admin/category/create";
    }
    
    @RequestMapping(value = "/status",method = RequestMethod.GET)
    public String statusCate(Model model,@RequestParam("id") int id) {
    	Category c  = categoryService.getCategoryById(id);
    	int status = (c.getStatus()==1) ? 2 : 1;
    	c.setStatus(status);
    	categoryService.updateCategory(c);
    	return "redirect:/admin/category/";
    }

    
   
    
    @RequestMapping(value = "/deltrash")
    public String dealTrash(Model model,@RequestParam("id") int id) {
    	Category c = categoryService.getCategoryById(id);
    	c.setStatus(0);
    	categoryService.updateCategory(c);
    	return "redirect:/admin/category/listtrash";
    }
    
    @RequestMapping(value = "/delete")
    public String deleteCategory(Model model,@RequestParam("id") int id) {
    	categoryService.removeCategory(id);
    	return "redirect:/admin/category/listtrash";
    }
    
    @RequestMapping(value = "/restore")
    public String restoreCategory(Model model,@RequestParam("id") int id) {
    	Category c = categoryService.getCategoryById(id);
    	c.setStatus(1);
    	categoryService.updateCategory(c);
    	return "redirect:/admin/category/";
    }
    
    @RequestMapping(value = "/listtrash")
    public String dealTrash(Model model) {
    	model.addAttribute("listtrash", categoryService.listTrash());
    	return "/admin/category/listtrash";
    }
}
