package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.User;

public interface UserService {

	List getList(String mohu);

	void add(User user);

	User getUser(User user);

	void update(User user);

	void del(User user);

	void getlogin(User user);

	List getwList();

}
