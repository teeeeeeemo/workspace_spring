package com.springbook.biz.user;

public interface UserService {

	//CRUD 기능의 메소드 구현
	//회원등록
	
	void insertUser(UserVO vo); //회원가입
	void updateUser(UserVO vo); //회원정보수정
	void deleteUser(UserVO vo); //회원탈퇴
	UserVO getUser(UserVO vo); //로그인 할 때 아이디 비번


}