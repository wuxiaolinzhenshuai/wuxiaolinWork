package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.UserService;
import com.example.demo.vo.User;

@Controller
public class UserController {

	private String mohu;
	
	@Autowired
	private UserService service;
	
	@RequestMapping("tologin")
	public String tologin() {
		return "login";
	}
	
	@RequestMapping("login")
	public String login(User user,HttpSession session) {
		service.getlogin(user);
		if(user!=null) {
			session.setAttribute("user", user);
			return "redirect:list";
		}
		return "login";
	}
	
	@RequestMapping("list")
	public String list(Model model,String mohu) {
		List list=service.getList(mohu);
		model.addAttribute("list", list);
		return "list";
	}
	

	@RequestMapping("toAdd")
	public String toAdd() {
		return "add";
	}
	
	@RequestMapping("add")
	public String add(User user) {
		service.add(user);
		return "redirect:list";
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(Model model,User user) {
		User u=service.getUser(user);
		model.addAttribute("u", u);
		return "update";
	}
	
	@RequestMapping("update")
	public String update(User user) {
		service.update(user);
		return "redirect:list";
	}
	
	@RequestMapping("toDel")
	public String toDel(User user) {
		service.del(user);
		return "redirect:list";
	}
	
	
	@RequestMapping("dologin")
	public String dologin() {
		return "dlogin";
	}
	
	@RequestMapping("getlogin")
	public String getlogin(User user,HttpSession session) {
		service.getlogin(user);
		if(user!=null) {
			session.setAttribute("user", user);
			return "redirect:wlist";
		}
		return "dlogin";
	}
	
	
	@RequestMapping("wlist")
	public String wlist(Model model,String mohu) {
		List wlist=service.getwList();
		model.addAttribute("wlist", wlist);
		return "wlist";
	}
}
