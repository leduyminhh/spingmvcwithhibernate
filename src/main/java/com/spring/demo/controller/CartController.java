package com.spring.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.info.CartInfo;
import com.spring.demo.info.ProductInfo;
import com.spring.demo.model.Product;
import com.spring.demo.service.OrderDetailService;
import com.spring.demo.service.OrderService;
import com.spring.demo.service.ProductService;
import com.spring.demo.ulti.Utils;

@Controller
public class CartController {

	@Autowired(required = true)
	private ProductService productService;

	@Autowired(required = true)
	private OrderService orderService;

	@Autowired(required = true)
	private OrderDetailService orderDetailService;

	@RequestMapping({ "/shoppingCartRemoveProduct" })
	public String removeProductHandler(HttpServletRequest request, Model model, //
			@RequestParam(value = "code", defaultValue = "") int code) {
		Product product = productService.getProductById(code);
		if (product != null) {

			// Cart Info stored in Session.
			CartInfo cartInfo = Utils.getCartInSession(request);

			ProductInfo productInfo = new ProductInfo(product);

			cartInfo.removeProduct(productInfo);

		}
		// Redirect to shoppingCart page.
		return "redirect:/shoppingCart";
	}

	@RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.POST)
	public String shoppingCartUpdateQty(HttpServletRequest request, //
			Model model, //
			@ModelAttribute("cartForm") CartInfo cartForm) {

		CartInfo cartInfo = Utils.getCartInSession(request);
		cartInfo.updateQuantity(cartForm);

		// Redirect to shoppingCart page.
		return "redirect:/shoppingCart";
	}

	// GET: Show Cart
	@RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.GET)
	public String shoppingCartHandler(HttpServletRequest request, Model model) {
		CartInfo myCart = Utils.getCartInSession(request);
		model.addAttribute("cartForm", myCart);
		return "cart/shoppingCart";
	}

	@RequestMapping(value = { "/shoppingCart/order" }, method = RequestMethod.GET)
	public String orderProduct(HttpServletRequest request, //
			Model model) {
		String username = (String) request.getSession().getAttribute("loggedInUser");
		if (username != null) {
				CartInfo myCart = Utils.getCartInSession(request);
				orderService.AddOrder(username);
				orderDetailService.insertOrderDetail(myCart,orderService.getIdMax().getId());
				Utils.removeCartInSession(request);
				CartInfo cartInfo = (CartInfo) request.getSession().getAttribute("myCart");
				request.getSession().setAttribute("productInCart",productService.GetProductInCart(cartInfo));
				return "redirect:/shoppingCart";
		} else
			return "redirect:/login";
	}

}
