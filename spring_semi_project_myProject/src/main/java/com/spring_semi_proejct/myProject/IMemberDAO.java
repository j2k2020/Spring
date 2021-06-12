package com.spring_semi_proejct.myProject;

import java.util.ArrayList;
import java.util.HashMap;

public interface IMemberDAO {
	MemberVO homeloginCheck(HashMap<String, String> map); //로그인 id,pw 체크
	MemberVO idCheck(String id); //id 중복체크
	public ArrayList<MemberVO> memberList();
	public void insertMember(MemberVO vo); //회원 등록(회원가입)
	public MemberVO readMemberID(String id); //사용자 id에 해당하는 정보 가져오기
	 

}
