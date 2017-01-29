package com.springbook.view.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.biz.user.impl.UserDAOMybatis;

@Controller
@SessionAttributes("user")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면으로 이동");
		//vo.setId("test");
		//vo.setPassword("test123");
		return "login.jsp";
	}

	@ModelAttribute("userMap")
	public Map<String, String> matchingUserMap(UserVO vo) {
		Map<String, String> userMap = new HashMap<String, String>();
		userMap.put("password", vo.getPassword());
		return userMap;
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, HttpSession session) {
		System.out.println("로그인 처리"); ///
		if(vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야해 !!!!!!!");
		}
		if(vo.getPassword() == null || vo.getPassword().equals("")) {
			throw new IllegalArgumentException("비밀번호 입력 안할거야 ?");
		}
		
		if(vo.getId() != null) {
			session.setAttribute("userName", userService.getUser(vo).getName()); //session이용하여 로그인 
			session.setAttribute("userId", userService.getUser(vo).getId()); //session이용하여 회원정보수정 
			return "getBoardList.do";
		}
		else
			return "login.jsp";
	}
}

