package com.nowij.nv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NvController {
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
}
