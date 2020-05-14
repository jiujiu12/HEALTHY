package com.taike.domain;

import java.io.Serializable;

//��Ʒ����
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	//��Ʒ���
	private int sid;
//	��Ʒ��
	private String sname;
//	�۸�
	private double sprice;
//	����
	private int snum;
//	·��
	private String simgpath;
//	����
	private String stype;
	
	public Product(int id,String name,double price,int num,String simgpath,String type){
		super();
		this.sid=id;
		this.sname=name;
		this.sprice=price;
		this.snum=num;
		this.simgpath=simgpath;
		this.stype=type;
	}
	
	public int getSid() {
		return sid;
	}



	public void setSid(int sid) {
		this.sid = sid;
	}



	public String getSname() {
		return sname;
	}



	public void setSname(String sname) {
		this.sname = sname;
	}



	public double getSprice() {
		return sprice;
	}



	public void setSprice(double sprice) {
		this.sprice = sprice;
	}



	public int getSnum() {
		return snum;
	}



	public void setSnum(int snum) {
		this.snum = snum;
	}



	public String getSimgpath() {
		return simgpath;
	}



	public void setSimgpath(String simgpath) {
		this.simgpath = simgpath;
	}



	public String getStype() {
		return stype;
	}



	public void setStype(String stype) {
		this.stype = stype;
	}



	@Override
	public String toString() {
		return "Product [sid=" + sid + ", sname=" + sname + ", sprice=" + sprice + ", snum=" + snum + ", simgpath="
				+ simgpath + ", stype=" + stype + "]";
	}
	
}
