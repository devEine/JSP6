package com.itwillbs.test;

public class JavaBean1 {
	
	//Bean: 일반화 시킨 자바 객체
	private String id;
	private String name;
	private String address;

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "JavaBean1 [id=" + id + ", name=" + name + ", address=" + address + "]";
	}


	
	
}
