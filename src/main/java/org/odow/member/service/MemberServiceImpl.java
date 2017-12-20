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
		mapper.login(member);
	}

	@Override
	public Boolean idcheck(String id) {
	Boolean result = mapper.idcheck(id) == 0 ? false : true;
		
		return result;
	}

	@Override
	public Boolean logincheck(String id, String pw , Boolean remember) {
		System.out.println("serviceimpl pw :" + pw);
		System.out.println("serviceimpl id :" +id);
		System.out.println("serviceimpl remember :" +remember);
		
		System.out.println("디비테스트 :" + mapper.logincheck(id));
		
		if(mapper.logincheck(id) != null) {
			if(mapper.logincheck(id).equals(pw)) {
				System.out.println("로그인성공");
				return true;
			}
		}
		return false;
	}

}
