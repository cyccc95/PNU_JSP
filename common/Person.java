package common;

public class Person {
	private String name;
	private int age;
	
	public Person() {}

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

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
	};
}

//데이터 전송 객체(DTO)
//자바빈즈 규약
//1. 자바빈즈는 default package 이외의 package에 속해야함
//2. 멤버 변수(속성)의 접근 지정자는 private
//3. 기본 생성자가 있어야함
//4. 멤버 변수에 접근할 수 있는 getter, setter method가 있어야함
//5. getter, setter method의 접근 지정자는 public