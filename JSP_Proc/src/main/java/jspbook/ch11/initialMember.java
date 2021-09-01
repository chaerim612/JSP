package jspbook.ch11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/*
@WebListener ������̼��� Servlet-api ���̺귯���� �����ͼ� ����� �� �ֵ��� ����
�����ø����̼��� �̺�Ʈ, ��(����, ���� ���� �̺�Ʈ)�� ����ϴ� ������.
Member Ŭ������ ȣ��Ǵ� ���� �ڵ����� ��üó�� �����ϵǾ� �����
*/

@WebListener 
public class initialMember implements ServletContextListener {

    
    public void contextDestroyed(ServletContextEvent sce)  { 
        
    	ServletContext context=sce.getServletContext();
    	ArrayList<Member> datas=new ArrayList<Member>();
        
        //Member data=new Member("���ڹ�",test@test.net);
        for(int i=0;i<8;i++) {
        	Member data=new Member("���ڹ�"+i,"test"+i+"@test.net");
        	datas.add(data);
        }
        
        //�̸����� ���� ȸ�� 2��
        datas.add(new Member("ȫ�浿",null));
        datas.add(new Member("ȫ�浿",null));
        
        context.setAttribute("members", datas);
        context.setAttribute("member",new Member());	//name=ȫ�浿 email="test@test.net";
        
    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	
    }
	
}
