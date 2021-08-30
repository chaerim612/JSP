package jspbook.model;

import java.sql.*;
import java.util.*;

import control.MemberBean;

public class MemberDAO {

	// 오라클 데이터베이스에 연결해서 select, insert, update, delete... 작업을 실행해주느 메서드들이 클래스

	// 오라클 접속하는 소스 작성
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 접속 url
	String user = "system";
	String pass = "1234";

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// =======================================================

	public void getCon() {
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, pass);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// =======================================================
	// 1. 데이터베이스에 한 사람의 회원가입을 저장해주는 메소드
	public void insertMember(MemberDBBean mbean) {

		try {
			// 데이터베이스 연동 코드 생략이 가능하도록 메소드 호출
			getCon();
			// 접속 후 쿼리 구성
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			// 쿼리가 작동하도록 준비
			pstmt = con.prepareStatement(sql);
			// ?에 맞게 데이터 매핑
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
			// 4. 오라클에 데이터 입력
			pstmt.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 2. 모든 회원들의 정보를 출력하는 메소드
	public Vector<MemberDBBean> allSelectMember() {
		Vector<MemberDBBean> v = new Vector<MemberDBBean>();

		try {
			getCon();

			String sql = "select * from member";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				MemberDBBean bean = new MemberDBBean();
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
				v.add(bean);
			}
			con.close();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return v;
	}
	//============================================
	//3. 한 사람에 대한 상세 정보를 출력하는 메소드
	public MemberDBBean oneSelectMember(String id) {
		MemberDBBean bean=new MemberDBBean();
		
		try {
			getCon();
			
			String sql="select * from member where id=?";
			pstmt=con.prepareStatement(sql);
			
			//?매핑
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
			
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

}
