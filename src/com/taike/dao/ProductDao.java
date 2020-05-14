package com.taike.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.taike.domain.Product;

import com.taike.utils.JDBCUtils;

public class ProductDao {
	// 查找所有商品
	public List<Product> listAll(){
			List<Product> list=new ArrayList<Product>();
//			获取连接
			Connection conn=JDBCUtils.getConnection();
			java.sql.PreparedStatement ps=null;
			java.sql.ResultSet rs=null;
			try{
				ps=conn.prepareStatement("select a.sid,a.sname,a.sprice,a.snum,a.simgpath,b.stname from shopinfo a INNER JOIN shoptype b on a.stype=b.stid;");
				rs=ps.executeQuery();
				while(rs.next()){
					list.add(new Product(rs.getInt(1),rs.getString(2),
											rs.getDouble(3),rs.getInt(4),
											rs.getString(5),rs.getString(6)));
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			return list;
		}
}
