package com.nowij.nv.service;

import java.util.List;

import com.nowij.nv.vo.NvScheduleVO;

public interface NvDbService {
	public List<NvScheduleVO> scheduleList();
	public int scheduleChange(NvScheduleVO vo);
}
