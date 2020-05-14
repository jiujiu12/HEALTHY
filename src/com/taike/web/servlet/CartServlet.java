package com.taike.web.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

/**
 * 购物车实现
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * 
     */
    public CartServlet() {super();}

	/**
	 * 添加商品到购物车
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        // 设置编码，防止出现乱码
				response.setContentType("text/html;charset=utf-8");
		        //创建session
				HttpSession session=request.getSession(true);
				//创建商品列表
				java.util.List<String> list=(java.util.List<String>) session.getAttribute("carts");
				if(list==null){
					list=new ArrayList<String>();
				}
				//获取商品参数
				String id=request.getParameter("id");
				//将参数存入列表
				list.add(id);
				//将参数设置为session属性
				session.setAttribute("carts", list);
				System.out.println(list.toString());
				//提示成功
				response.getWriter().print("添加购物车成功!");
				response.setHeader("Refresh", "2;URL=/WebApp/pages/item_show.jsp");
	}

}
