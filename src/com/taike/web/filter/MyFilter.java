package com.taike.web.filter;
import java.io.*;
import javax.servlet.Filter;
import javax.servlet.*;
public class MyFilter implements Filter {

	// ����������������ʱ�Զ����ã��ͷ���Դ
	public void destroy() {}
	
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// ���������û�����������͵�ǰ������������·��ƥ�䣬�÷����ᱻ����
		PrintWriter out=response.getWriter();
		out.write("Hello MyFilter");
	}
	// �����������ڳ�ʼ��ʱ���ã���������һЩ��ʼ������
	public void init(FilterConfig fConfig) throws ServletException {}
}
