package org.odow.main.mappers;

import java.util.List;

import org.odow.domain.Keyword;
import org.odow.domain.Original;

public interface MainMapper {
	
	public List<Keyword> getAll();
	public List<Keyword> getBoy();
	public List<Keyword> getGirl();
	public List<String> getNaver();
	public List<Original> getOriginalData(String keyword);
	public int getChartCount(String keyword, String date);
	
}

