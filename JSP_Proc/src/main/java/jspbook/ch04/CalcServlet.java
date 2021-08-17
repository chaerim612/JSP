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
       
    //protected >> 상속
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet방식을 사용하지 않으므로 doPost방식을 호출
		doPost(request, response);
	}
	//POST 요청을 처리하기 위한 메서드
	//doGet에서도 처리할 수 있도록 하기 위하여 doPost()로 정의
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int num2, num1;
		String op="";
		int result;
		
		response.setContentType("text/html; charset=UTF-8");
		//클라이언트의 요청을 출력하기 위한 출력스트림 설정
		PrintWriter out=response.getWriter();
		
		num1=Integer.parseInt(request.getParameter("num1"));
		op=request.getParameter("operator");
		num2=Integer.parseInt(request.getParameter("num2"));
		
		result=calc(num1,num2,op);
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+" = "+result);
		out.println("</CENTER></BODY></HTML>");
	}
	
	public int calc(int num1, int num2, String op) {
		int result=0;
		
		if(op.equals("+")){
			result=num1+num2;
		}
		else if(op.equals("-")){
			result=num1-num2;
		}
		else if(op.equals("*")){
			result=num1*num2;
		}
		else if(op.equals("/")){
			result=num1/num2;
		}
		
		return result;
	}
	

}
//		out.println("<HTML>");//뷰에 뿌려주는 메서드

//doGet(request, response);}