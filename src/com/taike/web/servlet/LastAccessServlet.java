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
 * 显示上次访问时间
 */
@WebServlet("/LastAccessServlet")
public class LastAccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * 在doGet中获取上次访问时间
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		response.setContentType("text/html;charset=utf-8");
		//设置上次访问时间变量
		String lastAccess=null;
		//定义并遍历cookie
		Cookie[] cookies=request.getCookies();
		for (int i=0;cookies!=null&&i<cookies.length;i++) {
			if("lastAccess".equals(cookies[i].getName())){
				lastAccess=cookies[i].getValue();
				break;
			}
		}
		//输出最近一次访问时间
		if(lastAccess==null){
			String now=new Date().toString();
			response.getWriter().print("您最近一次访问时间为："+now);
		}else{
			response.getWriter().print("您上次访问时间为："+lastAccess);
		}
		//创建cookie，设置保存一小时
		Cookie cookie=new Cookie("lastAccess", new Date().toString());
		cookie.setMaxAge(60*60);
		response.setHeader("Refresh","2;url=/WebApp/TestServlet2");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
