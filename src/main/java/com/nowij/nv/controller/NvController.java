package com.nowij.nv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NvController {
	
	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/team.do")
	public String team(String team, Model model) {
		model.addAttribute("team", team);
		return "team";
	}
	
	@RequestMapping("/game.do")
	public String game(String team, Model model) {
		model.addAttribute("team", team);
		return "game";
	}
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}
}
