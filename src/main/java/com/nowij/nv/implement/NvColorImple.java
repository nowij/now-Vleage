package com.nowij.nv.implement;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Service;

import com.nowij.nv.service.NvColorService;
import com.nowij.nv.vo.NvColorVO;

@Service
@ConfigurationProperties(prefix = "team")
public class NvColorImple implements NvColorService {

	private Map<String, NvColorVO> colors = new HashMap<String, NvColorVO>();
	
	public Map<String, NvColorVO> getColors() {
		return this.colors;
	}
	
	public void setColors(Map<String, NvColorVO> colors) {
		this.colors = colors;
	}
	
	public NvColorVO colors(String team) {
		return colors.get(team);
	}

}
