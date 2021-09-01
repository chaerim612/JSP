package jspbook.ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ItemTagHandler extends SimpleTagSupport{
	
	//�±� �Ӽ�
	private String border;
	private String bgcolor;
	
	@Override
	public void doTag() throws JspException, IOException {
		
		//jsp out ��ü ����
		JspWriter out=getJspContext().getOut();
		//�ٵ� �±� ó�� ��ü
		JspFragment body=getJspBody();
		//========================================
		Product product=new Product();
		StringBuffer msg=new StringBuffer();	//�ӵ� ����� ���� �ѹ��� �±׸� ��Ƽ� ó��(�߰� ���� ����)
		
		if(body!=null) {
			out.println("<h2>");
			body.invoke(null);	//invoke: body�� ��ȯ���� �����ϱ� ���� ����
			out.println("</h2>");
		}
		
		/*<table border="1" bgcolor="Sky blue" width="150">
		
		for(String item : product.getProductList()){
			out.println("<option>"+item+"</option>");
		}
		</table>
		*/
		
		msg.append("<table border=")
		.append(border)
		.append(" bgcolor=")
		.append(bgcolor)
		.append(" width=150>");
		out.println(msg.toString());
		
		//��ǰ ��� ���
		for(String item : product.getProductList()){
			out.println("<tr><td>"+item+"</td></tr>");
		}
		
		out.println("</table");
	}

	public String getBorder() {
		return border;
	}

	public void setBorder(String border) {
		this.border = border;
	}

	public String getBgcolor() {
		return bgcolor;
	}

	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}
}
