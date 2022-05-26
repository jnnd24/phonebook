package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;


public class TestApp {
	
	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList);
		
		System.out.println("text");
		
		
		//System.out.println("<1.리스트>");

		
		
		//System.out.println(personList.get(1).getCompany());
	}

}
