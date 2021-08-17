package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //protected >> ���
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet����� ������� �����Ƿ� doPost����� ȣ��
		doPost(request, response);
	}
	//POST ��û�� ó���ϱ� ���� �޼���
	//doGet������ ó���� �� �ֵ��� �ϱ� ���Ͽ� doPost()�� ����
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int num2, num1;
		String op="";
		int result;
		
		response.setContentType("text/html; charset=UTF-8");
		//Ŭ���̾�Ʈ�� ��û�� ����ϱ� ���� ��½�Ʈ�� ����
		PrintWriter out=response.getWriter();
		
		num1=Integer.parseInt(request.getParameter("num1"));
		op=request.getParameter("operator");
		num2=Integer.parseInt(request.getParameter("num2"));
		
		Calc calc=new Calc(num1,num2,op);
		result=calc.getResult();
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>����</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>�����</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+" = "+result);
		out.println("</CENTER></BODY></HTML>");
	}
	
	
	

}
//		out.println("<HTML>");//�信 �ѷ��ִ� �޼���

//doGet(request, response);}