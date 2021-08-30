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
 * Servlet implementation class HelloWorld
 */
@WebServlet("/chapter14/HelloWorld")
public class HelloWorld extends HttpServlet {
	//직렬화
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		reqPro(req,res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		reqPro(req,res);
	}
	
	protected void reqPro(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		// TODO Auto-generated method stub
		String msg="Hello World";
		Integer data=8;
		
		req.setAttribute("msg", msg);
		req.setAttribute("data", data);
		
		//서블릿에서 jsp를 호출하면서 데이터를 같이 넘겨주는 객체
		RequestDispatcher rd=req.getRequestDispatcher("HelloWrold.jsp");
		rd.forward(req, res);
		
	}

}
