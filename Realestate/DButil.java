package com.bca.demo;
import java.sql.*;
public class DButil 
{
  static Connection con=null;
  static PreparedStatement pst=null;
  static ResultSet rs=null;
  public static Connection getConn()
  {
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","MCA24A44","rakesh");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return con;
  
  }
  public static ResultSet getData() throws Exception
  {
	  con=getConn();
	  pst=con.prepareStatement("select * from user");
	  rs=pst.executeQuery();
	  return rs;
  
  }
  public static int addData(UserBean b) throws Exception 
  {
	  int i=0;
	  con=getConn();
	  
	  pst=con.prepareStatement("insert into MCA24A44 values(?,?,?,?)");
	  pst.setString(1, b.getName());
	  pst.setString(2, b.getPsw());
	  pst.setInt(3, b.getAge());
	  pst.setInt(4, b.getPhone());
	  
	  i=pst.executeUpdate();
	  return i;
  }
}
