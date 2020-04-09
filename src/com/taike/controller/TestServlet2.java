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
 * 统计访问网页次数
 * 1. 跳转至servlet的页面2. 计算访问次数3. 重定向至要展示的首页，并获取输出访问次数
 * 获取上次访问时间
 */
@WebServlet("/TestServlet2")
public class TestServlet2 extends HttpServlet {
	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		  response.setContentType("text/html;charset=utf-8");
		//设置上次访问时间变量
			String lastAccess=null;
			String lastAccessTime = null;
	        //获取所有的Cookie，并将这些cookie存放在数组中
	        Cookie[] cookies = request.getCookies();
	        //遍历cookie数组
	        for (int i = 0;cookies != null && i<cookies.length ;i++){
	            //resp.getWriter().print(cookies[i].getName()+cookies[i].getValue());
	            if ("Cstao".equals(cookies[i].getName())){
	                //如果cookie的名称为lastAccess，则获取该cookie的值
	                lastAccessTime = cookies[i].getValue();
	                break;
	            }
	        }
	        //判断是否存在名称为lastAccess的cookie
	        if (lastAccessTime == null){
	            response.getWriter().print("您是首次访问本站！");
	        }else {
	            response.getWriter().print("你上次登录的时间——————" + lastAccessTime);
	        }
	        //创建cookie，将当前时间作为cookie的值发送给客户端
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
