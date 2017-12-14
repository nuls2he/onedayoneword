package org.odow.member.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.odow.domain.Member;


public interface MemberMapper {

	@Insert("insert into test_login(id, pw, child, location, time) values(#{id}, #{pw}, #{child}, #{location}, #{time})")
	public void login(Member member);

	@Select("select count(id) from test_login where id = #{id}")
	public int idcheck(String id);
	
	
}
