 package org.odow.main.service;

import java.util.List;

import org.odow.domain.Keyword;

public interface MainService {
	
	public List<Keyword> getAll();
	public List<Keyword> getBoy();
	public List<Keyword> getGirl();
	public List<String> getNaver();
	
}
