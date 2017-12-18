package org.odow.main.mappers;

import java.util.List;

import org.odow.domain.Keyword;

public interface MainMapper {
	
	public List<Keyword> getAll();
	public List<Keyword> getBoy();
	public List<Keyword> getGirl();
	public List<String> getNaver();
}
