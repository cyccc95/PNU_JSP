package com.domain;

public class MemberDTO {
	private String id;
	private String name;
	private String pass;
	private String regidate;
	
	public MemberDTO() {
		
	}

	public MemberDTO(String id, String name, String pass, String regidate) {
		super();
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.regidate = regidate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	
}	