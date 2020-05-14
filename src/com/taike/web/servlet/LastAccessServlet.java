package com.taike.web.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ��ʾ�ϴη���ʱ��
 */
@WebServlet("/LastAccessServlet")
public class LastAccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * ��doGet�л�ȡ�ϴη���ʱ��
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		response.setContentType("text/html;charset=utf-8");
		//�����ϴη���ʱ�����
		String lastAccess=null;
		//���岢����cookie
		Cookie[] cookies=request.getCookies();
		for (int i=0;cookies!=null&&i<cookies.length;i++) {
			if("lastAccess".equals(cookies[i].getName())){
				lastAccess=cookies[i].getValue();
				break;
			}
		}
		//������һ�η���ʱ��
		if(lastAccess==null){
			String now=new Date().toString();
			response.getWriter().print("�����һ�η���ʱ��Ϊ��"+now);
		}else{
			response.getWriter().print("���ϴη���ʱ��Ϊ��"+lastAccess);
		}
		//����cookie�����ñ���һСʱ
		Cookie cookie=new Cookie("lastAccess", new Date().toString());
		cookie.setMaxAge(60*60);
		response.setHeader("Refresh","2;url=/WebApp/TestServlet2");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
