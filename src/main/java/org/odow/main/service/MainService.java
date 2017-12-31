 package org.odow.main.service;

import java.util.List;

import org.odow.domain.ChartCount;
import org.odow.domain.Keyword;
import org.odow.domain.Original;

public interface MainService {
	
	public List<Keyword> getAll();
	public List<Keyword> getBoy();
	public List<Keyword> getGirl();
	public List<String> getNaver();
	public List<Original> getOriginalData(String keyword);
	public List<Integer> getChartCount(ChartCount chartCount);
	public List<String> todayKeyword();
	public List<String> allKeyword();
	public List<String> newDic();
	public List<String> excDic();
	
}
