package com.spring.demo.controller;

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
import com.spring.demo.service.UserService;
 
 
@Controller
public class LoginController {
    private static final Logger logger = Logger.getLogger(LoginController.class.getName());
 
    @Autowired
    UserService userService;
 
    /**
     * show login
     * 
     * @author realtut
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        logger.info("Request Login.");
        ModelAndView view = new ModelAndView("user/loginView");
        User loginBean = new User();
        view.addObject("loginBean", loginBean);
        logger.info("Open login page.");
        return view;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String Login(HttpServletRequest request, HttpServletResponse response) {
    	request.getSession().setAttribute("loggedInUser",null);
    	return "redirect:/";
    }
 
    /**
     * execute login
     * 
     * @author realtut
     * @param request
     * @param response
     * @param loginBean
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String executeLogin(HttpServletRequest request, HttpServletResponse response,
            @ModelAttribute("loginBean") User loginBean) {
        if (userService.isUsers(loginBean.getUsername(), loginBean.getPassword())) {
            request.getSession().setAttribute("loggedInUser", loginBean.getUsername());
            return "redirect:/";
        } else {
            request.setAttribute("message", "Invalid ussename or password!");
            return "user/loginView";
        }
        
    }
}