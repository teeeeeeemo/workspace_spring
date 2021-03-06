package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {
	

	//PointcutCommon.java에 시스템에서 사용할 모든 포인트컷을 등록
	//정의된 포인트컷을 참조하려면 클래스 이름과 참조 메소드 이름을 조합하여 지정해야 한다.
	@Before("PointcutCommon.allPointcut()")
	public void beforeLog(JoinPoint jp) {
		String method = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		
		System.out.println("[사전 처리] "+ method +  " () 메소드 ARGS 정보 : " + args[0].toString());
	}

}
