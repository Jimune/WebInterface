package com.jimune.webinterface.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jimune.webinterface.user.User;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping("/{section}")
	public @ResponseBody String handle(@PathVariable String section, HttpSession session) {
		User u = (User) session.getAttribute("user");
		
		return section;
	}
}
