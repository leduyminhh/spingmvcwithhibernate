package com.spring.demo.service;

import java.util.List;

import com.spring.demo.model.User;

public interface UserService {
	public boolean isUsers(String username, String password);

	public User findByUserName(String username);

	public boolean isAdmin(String username, String password);

	public List<User> listUser();

	public User getUserById(int id);

	public List<User> listTrash();

	public void addUser(User u);

	public void updateUser(User u);

	public void removeUser(int id);

}