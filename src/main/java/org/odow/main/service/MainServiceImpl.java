package org.odow.main.service;

import java.util.List;

import org.odow.domain.Keyword;
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

}
