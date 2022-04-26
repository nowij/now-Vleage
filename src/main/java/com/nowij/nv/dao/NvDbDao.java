package com.nowij.nv.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nowij.nv.vo.NvScheduleVO;

@Repository
public class NvDbDao {
	
	@Autowired
	SqlSession session;
	
	public List<NvScheduleVO> selectSchedule() {
		return session.selectList("scdl.selectSchedule");
	}
	
	public int insertSchedule(NvScheduleVO vo) {
		return session.insert("scdl.insertSchedule",vo);
	}
	
	public int updateSchedule(NvScheduleVO vo) {
		return session.update("scdl.updateSchedule",vo);
	}
}
