package jspbook.ch11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/*
@WebListener 어노테이션은 Servlet-api 라이브러리를 가져와서 사용할 수 있도록 구현
웹어플리케이션의 이벤트, 즉(시작, 종료 등의 이벤트)를 담당하는 리스너.
Member 클래스가 호출되는 순간 자동으로 객체처럼 컴파일되어 실행됨
*/

@WebListener 
public class initialMember implements ServletContextListener {

    
    public void contextDestroyed(ServletContextEvent sce)  { 
        
    	ServletContext context=sce.getServletContext();
    	ArrayList<Member> datas=new ArrayList<Member>();
        
        //Member data=new Member("김자바",test@test.net);
        for(int i=0;i<8;i++) {
        	Member data=new Member("김자바"+i,"test"+i+"@test.net");
        	datas.add(data);
        }
        
        //이메일이 없는 회원 2명
        datas.add(new Member("홍길동",null));
        datas.add(new Member("홍길동",null));
        
        context.setAttribute("members", datas);
        context.setAttribute("member",new Member());	//name=홍길동 email="test@test.net";
        
    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	
    }
	
}
