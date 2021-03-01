package com.spring.demo.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.model.Product;
import com.spring.demo.service.CategoryService;
import com.spring.demo.service.ProductService;

@Controller
@RequestMapping(value = "/admin/product")
public class ProductControllerAD {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/")
	public String showProduct(Model model) {
		model.addAttribute("listProduct", productService.listProduct());
		return "/admin/product/index";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editProduct(Model model, @RequestParam("id") int id) {
		model.addAttribute("product", productService.getProductById(id));
		model.addAttribute("listCategory", categoryService.listCategory());
		return "/admin/product/edit";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String addProduct(Model model, @ModelAttribute("pro") Product pro) {
		if (pro.getId() != 0) {
			pro.setUpdate_at(new Date());
			productService.updateProduct(pro);
		} else {
			
			pro.setCreate_at(new Date());
			productService.addProduct(pro);
		}
		return "redirect:/admin/product/";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String addProduct(Model model) {
		Product pro = new Product();
		model.addAttribute("listcate",categoryService.listCategory());
		model.addAttribute("pro", pro);
		return "/admin/product/create";
	}

	@RequestMapping(value = "/status", method = RequestMethod.GET)
	public String statusProduct(Model model, @RequestParam("id") int id) {
		Product p = productService.getProductById(id);
		int status = (p.getStatus() == 1) ? 2 : 1;
		p.setStatus(status);
		productService.updateProduct(p);
		return "redirect:/admin/product/";
	}

	@RequestMapping(value = "/deltrash")
	public String dealTrash(Model model, @RequestParam("id") int id) {
		Product p = productService.getProductById(id);
		p.setStatus(0);
		productService.updateProduct(p);
		return "redirect:/admin/product/listtrash";
	}

	@RequestMapping(value = "/delete")
	public String deleteProduct(Model model, @RequestParam("id") int id) {
		productService.removeProducty(id);
		return "redirect:/admin/product/listtrash";
	}

	@RequestMapping(value = "/restore")
	public String restoreProduct(Model model, @RequestParam("id") int id) {
		Product p = productService.getProductById(id);
		p.setStatus(1);
		productService.updateProduct(p);
		return "redirect:/admin/product/";
	}

	@RequestMapping(value = "/listtrash")
	public String dealTrash(Model model) {
		model.addAttribute("listProduct", productService.listTrash());
		return "/admin/product/listtrash";
	}
}
