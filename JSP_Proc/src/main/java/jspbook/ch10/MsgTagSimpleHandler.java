package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MsgTagSimpleHandler extends SimpleTagSupport{
	
	@Override
	public void doTag() throws JspException, IOException {
		
		//JspWriter�� ��ü�� ����� ������ ����� ������ ��½�Ű�� ����
		JspWriter out=getJspContext().getOut();
		out.println("Ŀ���� �ڵ鷯 �±� ��� �޽��� : �ڵ鷯 ����");
	}
}
