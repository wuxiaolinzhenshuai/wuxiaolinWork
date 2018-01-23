package com.example.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserDao;
import com.example.demo.service.UserService;
import com.example.demo.vo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
	
	@Override
	public List getList(String mohu) {
		// TODO Auto-generated method stub
		return dao.getList(mohu);
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		dao.add(user);
	}

	@Override
	public User getUser(User user) {
		// TODO Auto-generated method stub
		return dao.getUser(user);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		dao.update(user);
	}

	@Override
	public void del(User user) {
		// TODO Auto-generated method stub
		dao.del(user);
	}

	@Override
	public void getlogin(User user) {
		// TODO Auto-generated method stub
		dao.getlogin(user);
	}

	@Override
	public List getwList() {
		// TODO Auto-generated method stub
		return dao.getwlist();
	}

}
