package com.nowij.nv.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nowij.nv.dao.NvDbDao;
import com.nowij.nv.service.NvDbService;
import com.nowij.nv.vo.NvScheduleVO;

@Service
public class NvDbImple implements NvDbService {

	@Autowired
	NvDbDao dao;
	
	@Override
	public List<NvScheduleVO> scheduleList() {
		return dao.selectSchedule();
	}
	
	@Transactional
	public int scheduleChange(NvScheduleVO vo) {
		int result = 0;
		String oper = vo.getOperation();
		
		if ("INIT".equals(oper))
			result = dao.insertSchedule(vo);
		
		else if ("MODI".equals(oper))
			result = dao.updateSchedule(vo);
		
		return result;
	}

}
