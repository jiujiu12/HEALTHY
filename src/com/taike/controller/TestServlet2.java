package com.taike.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * ͳ�Ʒ�����ҳ����
 * 1. ��ת��servlet��ҳ��2. ������ʴ���3. �ض�����Ҫչʾ����ҳ������ȡ������ʴ���
 * ��ȡ�ϴη���ʱ��
 */
@WebServlet("/TestServlet2")
public class TestServlet2 extends HttpServlet {
	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		  response.setContentType("text/html;charset=utf-8");
		//�����ϴη���ʱ�����
			String lastAccess=null;
			String lastAccessTime = null;
	        //��ȡ���е�Cookie��������Щcookie�����������
	        Cookie[] cookies = request.getCookies();
	        //����cookie����
	        for (int i = 0;cookies != null && i<cookies.length ;i++){
	            //resp.getWriter().print(cookies[i].getName()+cookies[i].getValue());
	            if ("Cstao".equals(cookies[i].getName())){
	                //���cookie������ΪlastAccess�����ȡ��cookie��ֵ
	                lastAccessTime = cookies[i].getValue();
	                break;
	            }
	        }
	        //�ж��Ƿ��������ΪlastAccess��cookie
	        if (lastAccessTime == null){
	            response.getWriter().print("�����״η��ʱ�վ��");
	        }else {
	            response.getWriter().print("���ϴε�¼��ʱ�䡪����������" + lastAccessTime);
	        }
	        //����cookie������ǰʱ����Ϊcookie��ֵ���͸��ͻ���
	        String currentTime = new SimpleDateFormat("yyyy-M-d:hh:mm:ss").format(new Date());
	        Cookie cookie = new Cookie("Cstao",currentTime);
	        response.addCookie(cookie);
	        
		  HttpSession session1 = request.getSession();
		   Integer count =(Integer)session1.getAttribute("count");
		   if(count == null) {
		    count = new Integer(1);
		   }
		   else {
		    count = new Integer(count.intValue()+1);
		   }
		      session1.setAttribute("count",count);
		      System.out.println(count);
//		      request.getRequestDispatcher("index.jsp?count="+count).forward(request, response);
//		      response.setHeader("Refresh","2;url=/pages/main.jsp?count="+count);
		   request.getRequestDispatcher("/pages/main.jsp?count="+count+"&lastAccess="+lastAccessTime).forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
