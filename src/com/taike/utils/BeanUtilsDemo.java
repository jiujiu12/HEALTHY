package com.taike.utils;
import org.apache.commons.beanutils.BeanUtils;

import com.taike.domain.Person;

public class BeanUtilsDemo {
	public static void main(String[] args) throws Exception {
		Person p = new Person();
		// ʹ��BeanUtilsΪ���Ը�ֵ
		BeanUtils.setProperty(p, "name", "Tom");
		BeanUtils.setProperty(p, "age", 31);
		// ʹ��BeanUtils��ȡ����ֵ
		String name = BeanUtils.getProperty(p, "name");
		String age = BeanUtils.getProperty(p, "age");
		System.out.println("������" + name + ",����" + age + "��");
	}

}
