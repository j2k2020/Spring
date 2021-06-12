package com.spring_semi_proejct.myProject;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements IMemberService {
@Autowired
@Qualifier("IMemberDAO")
IMemberDAO dao;


	@Override
	public MemberVO homeloginCheck(String id, String pw) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("id", id);
		map.put("pw", pw);
		return dao.homeloginCheck(map);
	}

	@Override
	public MemberVO idCheck(String id) {
		return dao.idCheck(id);
	}
	
	@Override
		public ArrayList<MemberVO> memberList() {
			return dao.memberList();
		}
	
	@Override
		public void insertMember(MemberVO vo) {
			dao.insertMember(vo);
		}
	
			
	 @Override 
	 public MemberVO readMemberID(String id) { // TODO Auto-generated	
		 return dao.readMemberID(id);
	}
		 
		 
}
