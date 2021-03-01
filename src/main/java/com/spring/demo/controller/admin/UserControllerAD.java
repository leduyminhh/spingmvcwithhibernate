package com.spring.demo.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.demo.model.User;
import com.spring.demo.service.CustomerService;
import com.spring.demo.service.UserService;

@Controller
@RequestMapping(value = "/admin/user")
public class UserControllerAD {
	@Autowired
	UserService userService;
	
	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/")
	public String showUser(Model model) {
		model.addAttribute("listUser", userService.listUser());
		return "/admin/user/index";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editUser(Model model, @RequestParam("id") int id) {
		model.addAttribute("user", userService.getUserById(id));
		return "/admin/user/edit";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String addUser(Model model, @ModelAttribute("user") User user) {
		if (user.getId() != 0) {
			user.setUpdate_at(new Date());
			userService.updateUser(user);
		} else {
			user.setCreate_at(new Date());
			userService.addUser(user);
			;
		}
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String addUser(Model model) {
		User user = new User();
		model.addAttribute("listUser", userService.listUser());
		model.addAttribute("user", user);
		return "/admin/user/create";
	}

	@RequestMapping(value = "/status", method = RequestMethod.GET)
	public String statusUser(Model model, @RequestParam("id") int id) {
		User u = userService.getUserById(id);
		int status = (u.getStatus() == 1) ? 2 : 1;
		u.setStatus(status);
		userService.updateUser(u);
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "/deltrash")
	public String dealTrash(Model model, @RequestParam("id") int id) {
		User u = userService.getUserById(id);
		u.setStatus(0);
		userService.updateUser(u);
		;
		return "redirect:/admin/user/listtrash";
	}

	@RequestMapping(value = "/delete")
	public String deleteUser(Model model, @RequestParam("id") int id) {
		userService.removeUser(id);
		;
		return "redirect:/admin/user/listtrash";
	}

	@RequestMapping(value = "/restore")
	public String restoreUser(Model model, @RequestParam("id") int id) {
		User u = userService.getUserById(id);
		u.setStatus(1);
		userService.updateUser(u);
		return "redirect:/admin/user/";
	}
	
	@RequestMapping(value = "/userdetail")
	public String detailUser(Model model, @RequestParam("id") int id) {
		model.addAttribute("customer",customerService.findById(id));
		return "/admin/user/userdetail";
	}

	@RequestMapping(value = "/listtrash")
	public String dealTrash(Model model) {
		model.addAttribute("listUser", userService.listTrash());
		return "/admin/user/listtrash";
	}

}
