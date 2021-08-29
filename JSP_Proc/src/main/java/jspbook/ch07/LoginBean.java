package jspbook.ch07;


public class LoginBean {
	
	//사용자가 입력한 데이터
	private String userid;
	private String passwd;
	
	//오라클에서 가져온 아이디와 비번
	final String _userid="myuser";
	final String _passwd="12345";
	
	//데이터베이스의 로그인 정보와 일치하는지 확인하는 메소드 생성
	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd)) {
			return true;
		}else {
			return false;
		}
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
	
}
