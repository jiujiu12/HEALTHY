package com.taike.utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class JDBCUtils {
	private static String url="jdbc:mysql://localhost:3306/health";
	private static String username = "root";
	private static String password = "root";
	
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	// 加载驱动，并建立数据库连接
	public static Connection getConnection() {
			
			
			Connection conn = null;
			try{
				conn=DriverManager.getConnection(url, username,password);
			}catch(SQLException e){
				e.printStackTrace();
			}
			return conn;
		}
		// 关闭数据库连接，释放资源
		public static void release(Statement stmt, Connection conn) {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				stmt = null;
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				conn = null;
			}
		}
	     public static void release(ResultSet rs, Statement stmt, 
	     		Connection conn){
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				rs = null;
			}
			release(stmt, conn);
		}
}
