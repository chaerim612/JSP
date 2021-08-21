
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
	
	String msg=request.getParameter("msg");
	//세션에 저장된 로그인 사용자 id가져오기
	Object username=session.getAttribute("user");
	ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");	
	//입력한 댓글 가져오기
	if(msgs==null){
		msgs=new ArrayList<String>();
		application.setAttribute("msgs",msgs );
	}
	//출력
	Date date=new Date();
	SimpleDateFormat f=new SimpleDateFormat("MM/dd (HH:mm)", Locale.KOREA);
	msgs.add(username+ " : "+msg+" , "+f.format(date));
	application.log(msg+ " <== 메세지가 추가됨");
	 
	response.sendRedirect("twitter_list.jsp");

%>