package com.nowij.nv.implement;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import com.nowij.nv.service.NvCrawlingService;

public class NvCrawlingImple implements NvCrawlingService {

	public void kovoCrawling() throws IOException {
		// TODO 배치를 돌려서 경기결과를 가져오는 크롤링을 구현해야됨 (지금은 크롤링 테스트만)
		String url="https://www.kovo.co.kr/game/v-league/11210_team-ranking.asp?season=018&g_part=201&s_part=2";
		
		Document doc = null;
		doc = Jsoup.connect(url).get();
		
		// #tab1 > div.wrp_lst.mt10 > table > tbody > tr:nth-child(1)
		// #tab1 > div.wrp_lst.mt10 > table > tbody > tr:nth-child(1) > td.team
	}

}
