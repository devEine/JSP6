package com.itwillbs.test;

public class MainClass2 {

	public static void main(String[] args) {
		
		Student jeong = new Student();
		jeong.setName("정랑이");
		jeong.setKor(88);
		jeong.setEng(79);
		jeong.setMath(100);
		
		Cal c = new Cal();
		System.out.println("총점:"+c.sum(jeong));
		System.out.println("평균:"+c.avg(jeong));
	}

}
