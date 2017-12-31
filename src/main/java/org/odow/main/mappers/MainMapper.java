package org.odow.main.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.odow.domain.ChartCount;
import org.odow.domain.Keyword;
import org.odow.domain.Original;

public interface MainMapper {
	
	public List<Keyword> getAll();
	public List<Keyword> getBoy();
	public List<Keyword> getGirl();
	public List<String> getNaver();
	public List<Original> getOriginalData(String keyword);
	public List<Integer> getChartCount(ChartCount chartCount);
	
	@Select("select keyword from test_keyword where date_format(regdate, '%Y-%m-%d') = date_format(now(), '%Y-%m-%d')")
	public List<String> todayKeyword();
	
	@Select("select keyword from test_keyword")
	public List<String> allKeyword();
	
	@Select("select word from tb_newdic")
	public List<String> newDic();
	
	@Select("select word from tb_excdic")
	public List<String> excDic();
	
}

