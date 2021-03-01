package com.spring.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.info.CartInfo;
import com.spring.demo.info.ProductInfo;
import com.spring.demo.model.Product;
import com.spring.demo.service.ProductService;
import com.spring.demo.ulti.Utils;

@Controller
public class ProductController {
	@Autowired(required = true)
	private ProductService productService;

	@RequestMapping("/listproduct")
	public String mainPage(Model model) {
		model.addAttribute("listProduct", productService.listProduct());
		return "product/listproduct";
	}

	@RequestMapping(value = "/product")
	String getIdByValue(@RequestParam("id") int personId, Model model) {
		model.addAttribute("product", productService.getProductById(personId));
		model.addAttribute("listproductSimilar", productService.getListProductSimilar(personId));
		return "product/product";
	}

	@RequestMapping({ "/buyProduct" })
    public String listProductHandler(HttpServletRequest request, Model model, //
            @RequestParam(value = "code", defaultValue = "") int code) {
		String user = (String) request.getSession().getAttribute("loggedInUser");
		if(user!=null)
		{
			Product product = productService.getProductById(code);
	 
	            // Cart info stored in Session.
	            CartInfo cartInfo = Utils.getCartInSession(request);
	 
	            ProductInfo productInfo = new ProductInfo(product);
	 
	            cartInfo.addProduct(productInfo, 1);
	            request.getSession().setAttribute("productInCart",productService.GetProductInCart(cartInfo));
	            return "redirect:/shoppingCart";
		}else
	        	return "redirect:/login";
	}
}