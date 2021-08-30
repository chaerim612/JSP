package control;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberJoinProc
 */
@WebServlet("/chapter14/MProc2")
public class MemberJoinProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		MemberBean mb=new MemberBean();
		mb.setId(request.getParameter("id"));
		mb.setPw(request.getParameter("pass"));
		mb.setId(request.getParameter("name"));
		mb.setId(request.getParameter("phone"));
		mb.setId(request.getParameter("email"));
		
		request.setAttribute("mb", mb);
		RequestDispatcher dis=request.getRequestDispatcher("MemberView.jsp");
		dis.forward(request, response);
	}

}
