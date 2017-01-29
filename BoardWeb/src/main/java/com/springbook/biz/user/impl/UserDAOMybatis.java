package com.springbook.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public class UserDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertUser(UserVO vo) {
		System.out.println("===> Mybatis로 insertUser() 기능 처리");
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Mybatis로 getUser() 기능 처리");
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("===> Mybatis로 updateUser() 기능 처리");
		mybatis.update("UserDAO.updateUser", vo);
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("===> Mybatis로 deleteUser() 기능 처리");
		mybatis.delete("UserDAO.deleteUser", vo);
	}
	

}
