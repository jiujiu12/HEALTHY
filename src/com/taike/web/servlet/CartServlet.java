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
 * ���ﳵʵ��
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * 
     */
    public CartServlet() {super();}

	/**
	 * �����Ʒ�����ﳵ
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        // ���ñ��룬��ֹ��������
				response.setContentType("text/html;charset=utf-8");
		        //����session
				HttpSession session=request.getSession(true);
				//������Ʒ�б�
				java.util.List<String> list=(java.util.List<String>) session.getAttribute("carts");
				if(list==null){
					list=new ArrayList<String>();
				}
				//��ȡ��Ʒ����
				String id=request.getParameter("id");
				//�����������б�
				list.add(id);
				//����������Ϊsession����
				session.setAttribute("carts", list);
				System.out.println(list.toString());
				//��ʾ�ɹ�
				response.getWriter().print("��ӹ��ﳵ�ɹ�!");
				response.setHeader("Refresh", "2;URL=/WebApp/pages/item_show.jsp");
	}

}
