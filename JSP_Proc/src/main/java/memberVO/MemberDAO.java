package memberVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {
	//오라클 데이터베이스에 연결해서 select, insert, update, delete 등의 작업을 실행해주는 메서드들의 클래스
	
	//오라클 접속 소스
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String pass="12341234";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//오라클 연동 메서드
	public void getCon() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn=DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//=========================================================
	//1.데이터베이스에 한사람의 회원가입을 저장해주는 메서드
	public void insertMember(MemberBean mbean) {
		//데이터베이스 연동 코드 생략이 가능하도록 메소드 호출
		try {
			getCon();//접속완료
			
			//접속 후 쿼리 구현
			String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			//쿼리가 작동하도록 준비
			pstmt=conn.prepareStatement(sql);
			//?에 맞게 데이터매핑
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPw1());
			pstmt.setString(3, mbean.getPw2());
			pstmt.setString(4, mbean.getEmail());
			pstmt.setString(5, mbean.getGender());
			pstmt.setString(6, mbean.getAddress());
			pstmt.setString(7, mbean.getPhone());
			pstmt.setString(8, mbean.getHobby());
			pstmt.setString(9, mbean.getJob());
			pstmt.setString(10, mbean.getAge());
			pstmt.setString(11, mbean.getInfo());
			
			//4.오라클에 대이터 입력
			pstmt.executeUpdate();
			
			//5.자원반납
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//========================================================
	//2.모든 회원들의 정보를 출력하는 메소드
	public Vector<MemberBean> allSelectMember() {
		Vector<MemberBean> v = new Vector<MemberBean>();
		try {
			getCon();
			
			String sql="select * from member";
			pstmt=conn.prepareStatement(sql);
			
			//쿼리를 가져옴!
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
			MemberBean bean = new MemberBean();
			bean.setId(rs.getString(1));//rs에 저장된 첫번째 값 id를 가져옴!
			bean.setPw1(rs.getString(2));
			bean.setPw2(rs.getString(3));
			bean.setEmail(rs.getString(4));
			bean.setGender(rs.getString(5));
			bean.setAddress(rs.getString(6));
			bean.setPhone(rs.getString(7));
			bean.setHobby(rs.getString(8));
			bean.setJob(rs.getString(9));
			bean.setAge(rs.getString(10));
			bean.setInfo(rs.getString(11));
			
			v.add(bean);
			}
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
	//========================================================
	//3.한사람에 대한 상세정보를 출력하는 메소드
	public MemberBean oneSelectMember(String id) {
		
		MemberBean bean=new MemberBean();
		
		try {
			getCon();
			
			String sql="select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			
			//매핑
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPw1(rs.getString(2));
				bean.setPw2(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setGender(rs.getString(5));
				bean.setAddress(rs.getString(6));
				bean.setPhone(rs.getString(7));
				bean.setHobby(rs.getString(8));
				bean.setJob(rs.getString(9));
				bean.setAge(rs.getString(10));
				bean.setInfo(rs.getString(11));
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	//========================================================
	//4.한사람에 대한 회원정보를 수정하기 위해서 패스워드 가져오는 메서드
	public String getPass(String id) {
		
		String pass="";
		
		try {
			getCon();
			
			String sql="select pass1 from member where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pass=rs.getString(1);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pass;
	}
	//========================================================
	//4.한사람에 대한 회원정보를 수정하기 위해서 패스워드 가져오는 메서드
	public void updateMember(MemberBean bean) {
		try {
			getCon();
			
			String sql="update member set email=?, phone=?, address=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getAddress());
			pstmt.setString(4, bean.getId());
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
