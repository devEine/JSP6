package com.itwillbs.servlet;

public class Person {
	private String name;
	private int age;
	private Phone phone;
	//Phone데이터타입을 Person객체에서 참조중
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Phone getPhone() {
		return phone;
	}
	public void setPhone(Phone phone) {
		this.phone = phone;
	}
	
	
	
	
	
}
