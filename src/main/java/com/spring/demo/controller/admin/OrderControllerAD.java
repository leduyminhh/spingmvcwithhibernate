package com.spring.demo.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.model.Order;
import com.spring.demo.service.OrderDetailService;
import com.spring.demo.service.OrderService;
import com.spring.demo.service.ProductService;
import com.spring.demo.service.UserService;

@Controller
@RequestMapping(value = "/admin/order")
public class OrderControllerAD {
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService orderDetailService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "/")
	public String showOrder(Model model) {
		model.addAttribute("listOrder", orderService.listOrder());
		return "/admin/order/index";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editOrder(Model model, @RequestParam("id") int id) {
		model.addAttribute("order", orderService.getOrderById(id));
		model.addAttribute("users", userService.listUser());
		return "/admin/order/edit";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String addOrder(Model model, @ModelAttribute("order") Order order) {
		order.setUpdate_at(new Date());
		orderService.updateOrder(order);;
		return "redirect:/admin/order/";
	}

	@RequestMapping(value = "/status", method = RequestMethod.GET)
	public String statusOrder(Model model, @RequestParam("id") int id) {
		Order o = orderService.getOrderById(id);
		int status = (o.getStatus() == 1) ? 2 : 1;
		o.setStatus(status);
		orderService.updateOrder(o);;
		return "redirect:/admin/order/";
	}

	@RequestMapping(value = "/deltrash")
	public String dealTrash(Model model, @RequestParam("id") int id) {
		Order o = orderService.getOrderById(id);
		o.setStatus(0);
		orderService.updateOrder(o);;
		;
		return "redirect:/admin/order/listtrash";
	}

	@RequestMapping(value = "/delete")
	public String deleteOrder(Model model, @RequestParam("id") int id) {
		orderService.removeOrder(id);;
		;
		return "redirect:/admin/order/listtrash";
	}

	@RequestMapping(value = "/restore")
	public String restoreOrder(Model model, @RequestParam("id") int id) {
		Order o = orderService.getOrderById(id);
		o.setStatus(1);
		orderService.updateOrder(o);;
		return "redirect:/admin/order/";
	}
	
	@RequestMapping(value = "/orderdetail")
	public String detailOrder(Model model, @RequestParam("id") int id) {
		model.addAttribute("ordersDetail",orderDetailService.listOrderDetail(id));
		model.addAttribute("listProduct", productService.listProduct());
		return "/admin/order/orderdetail";
	}

	@RequestMapping(value = "/listtrash")
	public String dealTrash(Model model) {
		model.addAttribute("listOrder", orderService.listTrash());
		return "/admin/order/listtrash";
	}
}
