package com.jiwei.management.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jiwei.management.handler.EhCacheServiceHandler;
import com.sun.accessibility.internal.resources.accessibility;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ApplicationContext factory=new ClassPathXmlApplicationContext("classpath:spring-mvc.xml"); 
//		ehCacheServiceHandler.putCache("myCache", 5);
//		while(true) {
//			System.out.println(ehCacheServiceHandler.getCache("myCache"));
//		}
	}

}
