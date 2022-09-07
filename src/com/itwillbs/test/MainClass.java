package com.itwillbs.test;

public class MainClass {
	
	private static int sum;
	private static int avg;



	public static void show(String name, int kor, int eng, int math){
		System.out.println("이름: "+name);
		System.out.println("총점: "+(kor+eng+math));
		System.out.println("평균 : "+(kor+eng+math)/3);
	}
	public static void show(Student s){
		//메서드 오버로딩 (메서드명은 같고, 매개변수만 다른 데이터타입(Student)로)
		System.out.println(s.getName());
		System.out.println("총점: "+(s.getKor()+s.getEng()+s.getMath()));
		System.out.println("평균: "+(s.getKor()+s.getEng()+s.getMath())/3);
	}
	


	public static void main(String[] args) {
		
		String name ="학생1";
		int kor = 95;
		int eng=88;
		int math=77;
		
		//학생 점수의 총합,평균 출력
		System.out.println("이름: "+name);
		System.out.println("총점: "+(kor+eng+math));
		System.out.println("평균: "+(kor+eng+math)/3);
		
		System.out.println(" ");
		
		MainClass.show("정호랑", 100, 100, 150);
		
		Student s1 = new Student();
		s1.setName("정호랑");
		s1.setKor(100);
		s1.setEng(100);
		s1.setMath(20);
		
		MainClass.show(s1);
		
		//계산기 클래스 사용하여 총점 평균 구하기
		Cal c = new Cal();
		System.out.println(c.avg(s1));
		
	}

}
