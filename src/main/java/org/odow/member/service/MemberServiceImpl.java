package org.odow.member.service;

import org.odow.domain.Member;
import org.odow.member.mappers.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;
	@Override
	public void login(Member member) {
		
	}

	@Override
	public Boolean idcheck(String id) {

		return null;
	}

}
