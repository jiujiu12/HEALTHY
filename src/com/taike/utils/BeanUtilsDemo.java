package com.taike.utils;
import org.apache.commons.beanutils.BeanUtils;

import com.taike.domain.Person;

public class BeanUtilsDemo {
	public static void main(String[] args) throws Exception {
		Person p = new Person();
		// 使用BeanUtils为属性赋值
		BeanUtils.setProperty(p, "name", "Tom");
		BeanUtils.setProperty(p, "age", 31);
		// 使用BeanUtils获取属性值
		String name = BeanUtils.getProperty(p, "name");
		String age = BeanUtils.getProperty(p, "age");
		System.out.println("名字是" + name + ",今年" + age + "岁");
	}

}
