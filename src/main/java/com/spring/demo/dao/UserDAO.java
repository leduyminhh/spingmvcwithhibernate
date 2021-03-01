package com.spring.demo.dao;

import java.util.List;

import com.spring.demo.model.User;

public interface UserDAO {
	
	public List<User> listUser();

	public User getUserById(int id);

	public User findByUserName(String username);

	public List<User> listTrash();

	public void addUser(User u);

	public void updateUser(User u);

	public void removeUser(int id);
}