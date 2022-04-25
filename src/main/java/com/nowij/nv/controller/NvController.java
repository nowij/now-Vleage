package com.nowij.nv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nowij.nv.service.NvColorService;
import com.nowij.nv.vo.NvColorVO;

@Controller
public class NvController {
	
	@Autowired
	NvColorService service;
	
	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/team.do")
	public String team(String team, Model model, NvColorVO vo) {
		vo = service.colors(team);
		vo.setTeam(team);
		model.addAttribute("vo", vo);
		return "team";
	}
	
	@RequestMapping("/game.do")
	public String game(String team, Model model, NvColorVO vo) {
		vo = service.colors(team);
		vo.setTeam(team);
		model.addAttribute("vo", vo);
		return "game";
	}
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/adminDetail.do")
	public String adminDetail(String option) {
		return "adminDtl";
	}
}
