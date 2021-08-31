package jspbook.model;

import java.sql.*;
import java.util.*;

import control.MemberBean;

public class MemberDAO {

	// ����Ŭ �����ͺ��̽��� �����ؼ� select, insert, update, delete... �۾��� �������ִ� �޼������ Ŭ����

	// ����Ŭ �����ϴ� �ҽ� �ۼ�
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // ���� url
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
	// 1. �����ͺ��̽��� �� ����� ȸ�������� �������ִ� �޼ҵ�
	public void insertMember(MemberDBBean mbean) {

		try {
			// �����ͺ��̽� ���� �ڵ� ������ �����ϵ��� �޼ҵ� ȣ��
			getCon();
			// ���� �� ���� ����
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			// ������ �۵��ϵ��� �غ�
			pstmt = con.prepareStatement(sql);
			// ?�� �°� ������ ����
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
			// 4. ����Ŭ�� ������ �Է�
			pstmt.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 2. ��� ȸ������ ������ ����ϴ� �޼ҵ�
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
	//3. �� ����� ���� �� ������ ����ϴ� �޼ҵ�
	public MemberDBBean oneSelectMember(String id) {
		MemberDBBean bean=new MemberDBBean();
		
		try {
			getCon();
			
			String sql="select * from member where id=?";
			pstmt=con.prepareStatement(sql);
			
			//?����
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
	//===========================================
	//4. �� ����� ���� ȸ�� ������ �������� �޼���
	public String getPass(String id) {
		String pw="";
		
		try {
			getCon();
			
			String sql="select pw1 from member where id=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pw=rs.getString(1);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return pw;
	}
	
	//5. �� ����� ���� ȸ�� ������ �����ϴ� �޼ҵ�
	public void updateMember(MemberDBBean bean) {
		
		try {
			getCon();
			
			String sql="update member set email=?,phone=?,address=? where id=?";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getAddress());
			pstmt.setString(4, bean.getId());
			pstmt.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	//=============================================
	//6. ȸ�� ���� ����
	public void DeleteMember(String id) {
		try {
			getCon();
			
			String sql="delete from member where id=?";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
