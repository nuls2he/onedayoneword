package org.odow.member.service;

import org.odow.domain.Member;

public interface MemberService {

	public void login(Member member);
	
	public Boolean idcheck(String id);
	
	public Boolean logincheck(String id , String pw ,Boolean remember);
}
