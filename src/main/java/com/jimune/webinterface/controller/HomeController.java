package com.jimune.webinterface.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/graph")
	public String graph(Model m) {
		m.addAttribute("labels", "'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'");
		m.addAttribute("series", "[{meta: 'Description, value: 1'},"
				+ "{meta: 'Description, value: 1'},"
				+ "{meta: 'Description, value: 1'},"
				+ "{meta: 'Description, value: 1'},"
				+ "{meta: 'Description, value: 1'},"
				+ "{meta: 'Description, value: 1'}]");
		return "graph";
	}
}
