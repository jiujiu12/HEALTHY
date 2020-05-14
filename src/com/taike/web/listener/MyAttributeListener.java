package com.taike.web.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class MyAttributeListener implements ServletContextAttributeListener,HttpSessionAttributeListener,ServletRequestAttributeListener{

	public void attributeAdded(ServletContextAttributeEvent sae) {
		String name = sae.getName();
		System.out.println("ServletContextÃÌº” Ù–‘£∫" + name + "="
				+ sae.getServletContext().getAttribute(name));
	}

	public void attributeRemoved(ServletContextAttributeEvent sae) {
		String name = sae.getName();
		System.out.println("ServletContext“∆≥˝ Ù–‘: " + name);
	}
	public void attributeReplaced(ServletContextAttributeEvent sae) {
		String name = sae.getName();
		System.out.println("ServletContextÃÊªª Ù–‘£∫" + name + "="
				+ sae.getServletContext().getAttribute(name));
	}
	public void attributeAdded(HttpSessionBindingEvent hbe) {
		String name = hbe.getName();
		System.out.println("HttpSessionÃÌº” Ù–‘£∫" + name + "="
				+ hbe.getSession().getAttribute(name));
	}

	public void attributeRemoved(HttpSessionBindingEvent hbe) {
		String name = hbe.getName();
		System.out.println("HttpSession“∆≥˝ Ù–‘: " + name);
	}
	public void attributeReplaced(HttpSessionBindingEvent hbe) {
		String name = hbe.getName();
		System.out.println("HttpSessionÃÊªª Ù–‘£∫" + name + "="
				+ hbe.getSession().getAttribute(name));
	}
	public void attributeAdded(ServletRequestAttributeEvent sra) {
		String name = sra.getName();
		System.out.println("ServletRequestÃÌº” Ù–‘£∫" + name + "="
				+ sra.getServletRequest().getAttribute(name));
	}
	public void attributeRemoved(ServletRequestAttributeEvent sra) {
		String name = sra.getName();
		System.out.println("ServletRequest“∆≥˝ Ù–‘: " + name);
	}

	public void attributeReplaced(ServletRequestAttributeEvent sra) {
		String name = sra.getName();
		System.out.println("ServletRequestÃÊªª Ù–‘£∫" + name + "="
				+ sra.getServletRequest().getAttribute(name));
	}

}
