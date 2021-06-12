package com.spring_semi_proejct.myProject;

import java.util.ArrayList;

public interface IMemberService {
	
	MemberVO homeloginCheck(String id, String pw);
	MemberVO idCheck(String id);
	ArrayList<MemberVO> memberList(); //회원 개인정보
	void insertMember(MemberVO vo); //회원 등록(회원가입)
	 public MemberVO readMemberID(String id); 

}
