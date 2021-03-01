package com.spring.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.demo.dao.UserDAO;
import com.spring.demo.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	
	@Autowired
    private UserDAO userDAO;

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
	@Override
	public boolean isUsers(String username, String password) {
		User user = userDAO.findByUserName(username);
        if (user != null && user.getPassword().equals(password)) {
            return true;
        }
        return false;
	}

	@Override
	public User findByUserName(String username) {
		return this.userDAO.findByUserName(username);
	}
	@Override
	public boolean isAdmin(String username, String password) {
		User user = userDAO.findByUserName(username);
        if (user != null && user.getPassword().equals(password) && user.getRole().equals("ADMIN")) {
            return true;
        }
        return false;
	}
	@Override
	public List<User> listUser() {
		return this.userDAO.listUser();
	}
	@Override
	public User getUserById(int id) {
		return this.userDAO.getUserById(id);
	}
	@Override
	public List<User> listTrash() {
		return this.userDAO.listTrash();
	}
	@Override
	public void addUser(User u) {
		this.userDAO.addUser(u);
		
	}
	@Override
	public void updateUser(User u) {
		this.userDAO.updateUser(u);
		
	}
	@Override
	public void removeUser(int id) {
		this.userDAO.removeUser(id);
		
	}
	
}
