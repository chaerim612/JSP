package memberVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {
	//����Ŭ �����ͺ��̽��� �����ؼ� select, insert, update, delete ���� �۾��� �������ִ� �޼������ Ŭ����
	
	//����Ŭ ���� �ҽ�
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String pass="12341234";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//����Ŭ ���� �޼���
	public void getCon() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn=DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//=========================================================
	//1.�����ͺ��̽��� �ѻ���� ȸ�������� �������ִ� �޼���
	public void insertMember(MemberBean mbean) {
		//�����ͺ��̽� ���� �ڵ� ������ �����ϵ��� �޼ҵ� ȣ��
		try {
			getCon();//���ӿϷ�
			
			//���� �� ���� ����
			String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			//������ �۵��ϵ��� �غ�
			pstmt=conn.prepareStatement(sql);
			//?�� �°� �����͸���
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
			
			//4.����Ŭ�� ������ �Է�
			pstmt.executeUpdate();
			
			//5.�ڿ��ݳ�
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//========================================================
	//2.��� ȸ������ ������ ����ϴ� �޼ҵ�
	public Vector<MemberBean> allSelectMember() {
		Vector<MemberBean> v = new Vector<MemberBean>();
		try {
			getCon();
			
			String sql="select * from member";
			pstmt=conn.prepareStatement(sql);
			
			//������ ������!
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
			MemberBean bean = new MemberBean();
			bean.setId(rs.getString(1));//rs�� ����� ù��° �� id�� ������!
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
	//3.�ѻ���� ���� �������� ����ϴ� �޼ҵ�
	public MemberBean oneSelectMember(String id) {
		
		MemberBean bean=new MemberBean();
		
		try {
			getCon();
			
			String sql="select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			
			//����
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
	//4.�ѻ���� ���� ȸ�������� �����ϱ� ���ؼ� �н����� �������� �޼���
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
	//4.�ѻ���� ���� ȸ�������� �����ϱ� ���ؼ� �н����� �������� �޼���
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
