package com.itwillbs.test;

public class Cal {
	
	Cal(){}
	
		
	public int sum(Student s){
		return s.getKor()+s.getEng()+s.getMath();
	}
	
	public int avg(Student s){
		return (s.getKor()+s.getEng()+s.getMath())/3;
	}

}
