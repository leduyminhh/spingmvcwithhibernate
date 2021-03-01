package com.spring.demo.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.demo.model.User;
import com.spring.demo.service.CategoryService;
import com.spring.demo.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = Logger.getLogger(AdminController.class.getName());
	
	@Autowired
    UserService userService;
	
	@Autowired 
	CategoryService categoryService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        logger.info("Request Login.");
        ModelAndView view = new ModelAndView("/admin/loginView");
        User loginBean = new User();
        view.addObject("loginBean", loginBean);
        logger.info("Open login page.");
        return view;
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String Login(HttpServletRequest request, HttpServletResponse response) {
    	request.getSession().setAttribute("loggedInAdmin",null);
    	logger.info("login adminpage sussses");
    	return "redirect:/admin/login";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String executeLogin(HttpServletRequest request, HttpServletResponse response,
            @ModelAttribute("loginBean") User loginBean) {
        if (userService.isAdmin(loginBean.getUsername(), loginBean.getPassword())) {
            request.getSession().setAttribute("loggedInAdmin", loginBean.getUsername());
            return "redirect:/admin/home";
        } else {
            request.setAttribute("message", "Invalid ussename or password or role!");
            return "/admin/loginView";
        }
        
    }
    
    @RequestMapping(value = {"/home","/"}, method = RequestMethod.GET)
    public String showView(HttpServletRequest request, HttpServletResponse response) {
    	if(request.getSession().getAttribute("loggedInAdmin")!=null)
    		return "/admin/home";
    	return "redirect:/admin/login";
    }
    
    

}
