package jspbook.ch11;

public class Member {
	private String name;
	private String email;
	
	public Member() {
		name="ȫ�浿";
		email="test@test.net";
	}
	
	public Member(String name, String email) {
		this.name=name;
		this.email=email;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
