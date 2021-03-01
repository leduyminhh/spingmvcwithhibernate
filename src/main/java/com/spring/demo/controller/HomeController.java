package com.spring.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.demo.info.CartInfo;
import com.spring.demo.service.CategoryService;
import com.spring.demo.service.ProductService;
@Controller
public class HomeController {
	@Autowired(required = true)
	private CategoryService categoryService;
	
	@Autowired(required = true)
	private ProductService productService;
	


	@RequestMapping(value={"/","home","trang-chu"})
    public ModelAndView mainPage(Model model,HttpServletRequest request) {
		request.getSession().setAttribute("listCateParent",categoryService.listCategory());
		model.addAttribute("listProductHotDeal",productService.listProductHotSale());
		model.addAttribute("listProductTrend",productService.listProductTrend());
		model.addAttribute("listProductHotBest",productService.listProductHotBest());
		model.addAttribute("listProductLatest_Review",productService.listProductLatest_review());
		model.addAttribute("listProductHotNew",productService.listProductHotNew());
		
	
		CartInfo cartInfo = (CartInfo) request.getSession().getAttribute("myCart");
		request.getSession().setAttribute("productInCart",productService.GetProductInCart(cartInfo));
		/*
		model.addAttribute("producthotnew1",productService.listProductIdCategory(1));
		model.addAttribute("producthotnew2",productService.listProductIdCategory(2));
		model.addAttribute("producthotnew5",productService.listProductIdCategory(3));
		model.addAttribute("producthotnew4",productService.listProductIdCategory(4));
		model.addAttribute("producthotnew3",productService.listProductIdCategory(5));
		*/
        return new ModelAndView("home/home");
    }
}
