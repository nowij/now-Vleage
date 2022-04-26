package com.nowij.nv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nowij.nv.service.NvDbService;
import com.nowij.nv.vo.NvScheduleVO;

@RestController
public class NvRestController {
	@Autowired
	NvDbService dbService;
	
	//TODO 프로듀서(크롤링하는) 컨슈머(화면만 보는) 분리하기
	
	@PostMapping("/schedule.do")
	public List<NvScheduleVO> schedule() {
		return dbService.scheduleList();
	}
	
	//@RequestMapping("/scheduleChange.do")
	@PostMapping("/scheduleChange.do")
	public int scheduleChange(NvScheduleVO vo) {
		return dbService.scheduleChange(vo);
	}
}
