package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;

public class MyLogAdvice {
	public void myLogPrint(JoinPoint jp) {
		System.out.println("[티모로그] 비지니스 로직 수행 전 동작");
	}

}
