package com.spring_semi_proejct.myProject;

//세미 프로젝트
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {
	@Autowired
	MemberService service;

	// 로그인:id,pw검사하여 존재하면 로그인 진행
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("id") String id, @RequestParam("pw") String pw, HttpSession session) {

		MemberVO vo = service.homeloginCheck(id, pw);
		if (vo != null) {
			session.setAttribute("sid", vo.getId());
		} else if (vo == null) {
			return "redirect:/";
		}
		return "mainHome";
	}

	@RequestMapping("/member/myPage/${id}")
	public String memberInfo(@PathVariable String id, Model model) { // 여기서 전체 리스트가 보이는게 아니라 개인정보만 불러오고 싶습니다.
		System.out.println("aa");
		/*
		 * ArrayList<MemberVO> memList=service.memberList();
		 * model.addAttribute("memList", memList);
		 */

		return "member/myPage";
	}

	// 회원가입 폼으로 이동
	@RequestMapping("/Login/joinForm")
	public String joinForm() {
		return "Login/join"; // Login폴더의 join.jsp로 이동
	}

	// 회원가입
	@RequestMapping("/join")
	public String insertJoinMember(MemberVO vo) {
		service.insertMember(vo);
		return "Login/login"; // 등록하면 바로 메인페이지로 이동

	}

	@RequestMapping("/Login/idCheck")
	public int idcheck(@RequestParam("id") String id) {
		MemberVO vo = service.idCheck(id);

		int result = 0;
		if (vo != null)
			result = 1; // 아이디가 존재하면 1

		return result;
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String homeLogout(HttpSession session) {
		session.invalidate();
		return "Login/login"; // 로그인 페이지로 다시 이동
	}

	// 개인 정보 확인
	@RequestMapping("/member/myPage")
	public String memberInfo(Model model, HttpSession session) {

		String sid = (String) session.getAttribute("sid");
		MemberVO mem = service.readMemberID(sid);
		model.addAttribute("mem", mem);

		return "member/myPage";
	}

}
