package org.odow.main.service;

import java.util.List;

import org.odow.domain.ChartCount;
import org.odow.domain.Keyword;
import org.odow.domain.Original;
import org.odow.main.mappers.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainMapper mapper;
	
	@Override
	public List<Keyword> getAll() {
		return mapper.getAll();
	}

	@Override
	public List<Keyword> getBoy() {
		return mapper.getBoy();
	}

	@Override
	public List<Keyword> getGirl() {
		return mapper.getGirl();
	}

	@Override
	public List<String> getNaver() {
		return mapper.getNaver();
	}

	@Override
	public List<Original> getOriginalData(String keyword) {
		return mapper.getOriginalData(keyword);
	}

	@Override
	public int getChartCountGirl(ChartCount chartCount) {
		return mapper.getChartCountGirl(chartCount);
	}
	
	@Override
	public int getChartCountBoy(ChartCount chartCount) {
		return mapper.getChartCountBoy(chartCount);
	}

	@Override
	public List<String> todayKeyword() {
		return mapper.todayKeyword();
	}

	@Override
	public List<String> allKeyword() {
		return mapper.allKeyword();
	}

	@Override
	public List<String> newDic() {
		return mapper.newDic();
	}

	@Override
	public List<String> excDic() {
		return mapper.excDic();
	}

	
	@Override
	public void excDicDelete(String word) {
		mapper.excDicDelete(word);
	}
	@Override
	public void newDicDelete(String word) {
		mapper.newDicDelete(word);
	}

	
	@Override
	public void excDicInsert(String word) {
		mapper.excDicInsert(word);
	}
	@Override
	public void newDicInsert(String word) {
		mapper.newDicInsert(word);
	}
	
}
