package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MsgTagSimpleHandler extends SimpleTagSupport{
	
	@Override
	public void doTag() throws JspException, IOException {
		
		//JspWriter의 객체를 만들어 구현될 결과를 웹으로 출력시키는 역할
		JspWriter out=getJspContext().getOut();
		out.println("커스텀 핸들러 태그 출력 메시지 : 핸들러 성공");
	}
}
